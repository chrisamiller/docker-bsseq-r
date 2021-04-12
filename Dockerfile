FROM bioconductor/bioconductor_docker:RELEASE_3_12
LABEL Image for ad-hoc bisulfite seq processing in R

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
    libssl-dev \
    libbz2-dev \
    liblzma-dev \
    libpng-dev \
    bzip2

#add r packages
ADD rpackages.R /tmp/
RUN R -f /tmp/rpackages.R
