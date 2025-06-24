Компилирует `resume.tex` в PDF с помощью Docker
1. После установки Docker создаем образ из Dockerfile:

   docker build -t latex-pdf .
   
   docker run --rm -v "$(pwd)":/workdir -w /workdir latex-pdf xelatex resume.tex

3. Готовый PDF файл появится а папке, сгенерированный из resume.tex, а так же вспомогательные технические файлы компиляции 
