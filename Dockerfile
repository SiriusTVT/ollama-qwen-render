FROM ollama/ollama

ENV OLLAMA_HOST=0.0.0.0:11434
ENV OLLAMA_MODELS=/root/.ollama/models

EXPOSE 11434

CMD ["serve"]
