FROM debian:10
RUN apt update && apt upgrade -y
RUN apt install openjdk-11-jdk -y
RUN apt install git -y
RUN mkdir /usr/HolaMundoCovichado
WORKDIR /usr/HolaMundoCovichado
RUN cd /usr/HolaMundoCovichado
RUN git clone https://github.com/hhinojal-unmdp/Hola-mundo-covichado.git
RUN javac HolaMundoCovichado.java
CMD ["java", "HolaMundoCovichado"]

