FROM ollama/ollama

ENV OLLAMA_MODELS=/root/.ollama/models

EXPOSE 10000

CMD ["sh", "-c", "export OLLAMA_HOST=0.0.0.0:${PORT:-10000}; ollama serve & until ollama list >/dev/null 2>&1; do sleep 2; done; ollama pull qwen2.5:0.5b-instruct-q8_0; wait"]