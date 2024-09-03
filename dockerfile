# Kør følgende command for at bygge din dockerfil
# "docker build -t eamvimage ."
# Kør "docker image ls" commanden for at se alle dine lokale docker images - her skal du kunne se "eamvimage:latest"
# Realiser en container udfra "eamvimage" ved at gøre følgende
# "docker run -it eamvimage"
# Så har du en container oppe at køre, med et ubuntu OS :-)

FROM ubuntu:20.04

# Opdatere og installere GNU nano (text editor)
RUN apt-get update && apt-get install -y \
    nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]

# Udforsk hvad der ligger i containeren :)
# "mkdir app" - laver en app mappe
# "cd app" - skifter til app mappen
# "touch text.txt" - laver en text fil
# "nano text.txt" åbner en text editor


# Push til hub.docker
# "docker login"
# "docker tag eamvimage:latest hauro/eamvimage" - byt selv image navn (eamvimage) og hub.docker username ud med dit eget
# For at pushe imaget med tagget du lige har angivet (latest), så skriv følgende
# "docker push hauro/eamvimage:latest"
# Ønsker du at lave flere tags på dit repo, kan du tagge dit image med andet end "latest"
# "docker tag eamvimage:latest hauro/eamvimage:prod" - her har jeg kaldt mit tag for prod, og derved får man to tags.