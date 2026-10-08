from fastapi import FastAPI

app = FastAPI(title="Mon API Flash")

@app.get("/")
def read_root():
    return {"status": "success", "message": "API FastAPI opérationnelle !"}
