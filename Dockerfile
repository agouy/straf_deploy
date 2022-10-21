FROM rocker/shiny-verse:4.1.2

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libgdal-dev \
    libglpk-dev \
    libmysqlclient-dev

RUN Rscript -e "install.packages(c('remotes', 'markdown')); remotes::install_github('agouy/straf', ref = '2.1.4')"

COPY /app.R ./app.R

# expose port
EXPOSE 3838

# run app on container start
CMD ["R", "-e", "shiny::runApp('./', host = '0.0.0.0', port = 3838)"]
