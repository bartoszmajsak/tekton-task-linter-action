FROM gcr.io/tekton-releases/dogfooding/catlin:latest

COPY lint_tasks.sh /usr/local/bin/lint_tasks.sh

ENTRYPOINT [ "lint_tasks.sh" ]