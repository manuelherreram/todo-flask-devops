from flask import Blueprint, render_template, request, redirect, url_for
from app import db
from app.models.task import Task

task_blueprint = Blueprint('tasks', __name__)

@task_blueprint.route('/', methods=['GET', 'POST'])
def task_list():
    if request.method == 'POST':
        task_title = request.form['title']
        if task_title:
            new_task = Task(title=task_title)
            db.session.add(new_task)
            db.session.commit()
        return redirect(url_for('tasks.task_list'))

    tasks = Task.query.order_by(Task.created_at.desc()).all()
    return render_template('tasks.html', tasks=tasks)

@task_blueprint.route('/complete/<int:task_id>')
def complete_task(task_id):
    task = Task.query.get_or_404(task_id)
    task.completed = True
    db.session.commit()
    return redirect(url_for('tasks.task_list'))

@task_blueprint.route('/delete/<int:task_id>')
def delete_task(task_id):
    task = Task.query.get_or_404(task_id)
    db.session.delete(task)
    db.session.commit()
    return redirect(url_for('tasks.task_list'))
