FROM python:3.11-slim

RUN pip install --no-cache-dir --index-url https://download.pytorch.org/whl/cpu torch && \
    pip install --no-cache-dir "laya[serve]"

ENV LAYA_HOST=0.0.0.0 \
    LAYA_PORT=7860 \
    LAYA_DEVICE=cpu \
    LAYA_PRELOAD=1

EXPOSE 7860

CMD ["laya-serve"]
