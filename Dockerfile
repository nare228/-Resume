FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-lang-cyrillic \
    texlive-lang-european \
    texlive-lang-other \
    texlive-fonts-extra \
    fonts-texgyre \
    fonts-freefont-ttf \
    fonts-liberation \
    fonts-dejavu \
    fonts-noto \
    fonts-noto-cjk \
    fontconfig \
    lmodern \
    && apt-get clean

RUN apt-get install -y ttf-mscorefonts-installer || true

WORKDIR /doc

COPY . /doc

CMD ["xelatex", "-interaction=nonstopmode", "main.tex"]

