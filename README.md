Компилирует `resume.tex` в PDF с помощью Docker
1. После установки Docker создаем образ из Dockerfile: #!/bin/bash
   docker build -t latex-pdf 
   docker run --rm -v "$(pwd)":/workdir latex-pdf xelatex -output-directory=output resume.tex

2.Готовый PDF файл появится а папке, сгенерированный из resume.tex, а так же вспомогательные технические файлы компиляции 
