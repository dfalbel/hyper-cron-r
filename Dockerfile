FROM rocker/tidyverse

COPY . /service

# Install the R libraries needed to run the scripts
RUN R -e "install.packages(c('telegram', 'fortunes'), repos = 'http://cran.us.r-project.org')"

# Execute the target script
CMD ["Rscript", "/service/send_fortune.R"]