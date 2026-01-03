# Apna NCERT 📘🤖

Apna NCERT is an AI-powered academic doubt solver built on NCERT textbooks.
It allows students to ask questions and receive contextual answers sourced directly from NCERT material.

## Features
- Ask academic questions in natural language
- NCERT-based source grounding
- Clean academic UI (prototyping standard)
- Works on Android
- Real-time answer generation

## Tech Stack
- Flutter (Frontend)
- FastAPI (Backend)
- RAG pipeline over NCERT data
- Cloudflare Tunnel (temporary backend exposure)

## How to Run
### Backend
uvicorn api:app --port 8000
