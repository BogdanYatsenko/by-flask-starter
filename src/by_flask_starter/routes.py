from flask import Blueprint, jsonify

bp = Blueprint("main", __name__)

@bp.get("/")
def index():
    return jsonify({
        "app": "BY Flask Starter",
        "status": "ok"
    })
