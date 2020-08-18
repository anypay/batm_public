FROM gradle

RUN mkdir /home/gradle_batm_public
RUN mkdir -p /batm/app/master/extensions

COPY . /home/gradle/batm_public

WORKDIR /home/gradle/batm_public

RUN ./gradlew :server_extensions_test:install

RUN ./gradlew build

RUN cp server_extensions_extra/build/libs/batm_server_extensions_extra.jar /batm/app/master/extensions/


