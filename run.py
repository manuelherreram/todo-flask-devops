from app import create_app, db
from app.models.task import Task

app = create_app()

@app.shell_context_processor
def make_shell_context():
    return {'db': db, 'Task': Task}

if __name__ == '__main__':
    app.run(debug=True)
