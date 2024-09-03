# Kør følgende command for at bygge din dockerfil
# "docker build -t eamvimage ."
# Kør "docker image ls" commanden for at se alle dine lokale docker images - her skal du kunne se "eamvimage:latest"
# Realiser en container udfra "eamvimage" ved at gøre følgende
# "docker run -it eamvimage"

FROM ubuntu:20.04

# Opdatere og installere GNU nano (text editor)
RUN apt-get update && apt-get install -y \
    nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]