#FROM r-base
FROM r-ver:3.5.1
#add a few useful tools
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    curl \
    emacs \
    emacs-goodies-el \
    ess \
    wget \
    pdftk \
    rsync \
    libxml2-dev \
    libcurl4-openssl-dev \
    libssl-dev

#add r packages
ADD rpackages.R /tmp/
RUN R -f /tmp/rpackages.R

