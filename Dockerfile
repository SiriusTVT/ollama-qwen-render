FROM ollama/ollama

ENV OLLAMA_MODELS=/root/.ollama/models
ENV OLLAMA_NUM_PARALLEL=1
ENV OLLAMA_MAX_LOADED_MODELS=1
ENV OLLAMA_FLASH_ATTENTION=1

EXPOSE 10000

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["export OLLAMA_HOST=0.0.0.0:${PORT:-10000}; ollama serve & until ollama list >/dev/null 2>&1; do sleep 2; done; ollama pull qwen2.5:0.5b-instruct-q2_k; wait"]