from fastapi import FastAPI
from src.main import main

app = FastAPI()

@app.on_event("startup")
async def startup_event():
    await main()

@app.get("/")
async def root():
    return {"message": "Firouzi Codex AI Entanglement Running"}
