from by_flask_starter import create_app

def test_index():
    app = create_app()
    client = app.test_client()
    res = client.get('/')
    assert res.status_code == 200
    data = res.get_json()
    assert data.get('status') == 'ok'
