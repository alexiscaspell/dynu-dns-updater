<a name="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/alexiscaspell/dynu-dns-updater">
    <img src="img/logo.png" alt="Logo" width="300" height="200">
  </a>

  <h3 align="center">DYNU-DNS-UPDATER</h3>

  <p align="center">
    Aplicacion para mantener actualizado tu ip publica en dns dynu
    <br />
    <a href="https://github.com/alexiscaspell/dynu-dns-updater"><strong>Explora la documentacion »</strong></a>
    <br />
    <br />
    <a href="https://github.com/alexiscaspell/dynu-dns-updater/issues">Reportar Bug</a>
    ·
    <a href="https://github.com/alexiscaspell/dynu-dns-updater/issues">Sugerir una Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Tabla de Contenido</summary>
  <ol>
    <li>
      <a href="#sobre-el-proyecto">Sobre el proyecto</a>
      <ul>
        <li><a href="#tecnologias-usadas">Tecnologias usadas</a></li>
      </ul>
    </li>
    <li>
      <a href="#empezando">Empezando</a>
      <ul>
        <li><a href="#prerequisitos">Prerequisitos</a></li>
        <li><a href="#instalacion">Instalacion</a></li>
      </ul>
    </li>
    <li><a href="#uso">Uso</a></li>
    <li><a href="#contribucion">Contribucion</a></li>
    <li><a href="#contacto">Contacto</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Sobre el proyecto

[![Product Screen Shot][product-screenshot]](img/screenshot1.png)

Este proyecto consiste en una imagen de docker alpine, que corre un cron que cada cierto tiempo detecta tu ip publica asignada por tu proveedor de internet y la actualiza en el dns de dynu. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Tecnologias usadas

Para realizar esto se utilizo

* [![Dynu][Dynu]][Dynu-url]
* [![Docker][Docker]][Docker-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Empezando

Para empezar a usar el proyecto puede buildear la imagen localmente o utilizar la imagen ya buildeada [en la registry de dockerhub](https://hub.docker.com/repository/docker/alexiscaspell/dynu-dns-updater/general)

### Prerequisitos

Para empezar necesitas:
* Docker
* Una cuenta en [Dynu](https://www.dynu.com/en-US)

### Instalacion

_Para empezar tenes que tener dado de alta [un dominio en dynu](https://www.dynu.com/en-US/ControlPanel/DDNS) _

1. Obtene tu api key en [https://www.dynu.com/en-US/ControlPanel/APICredentials](https://www.dynu.com/en-US/ControlPanel/APICredentials)
2. Clona el repositorio
   ```sh
   git clone https://github.com/alexiscaspell/dynu-dns-updater.git
   ```
3. Buildea la imagen
   ```sh
   cd dynu-dns-updater && docker build -t dynu-dns-updater .
   ```
4. Tambien podes usar la ultima version de la imagen ya construida
   ```sh
   docker pull alexiscaspell/dynu-dns-updater:latest
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Uso

### Configuracion

La configuracion se realiza mediante variables de ambiente, las cuales son:

* **APIKEY (required)**: Es la apikey de la cuenta que tenes asociada en dynu.
* **DOMAIN (required)**: El nombre de dominio que diste de alta en dynu (por ejemplo ***example.freedns.org***).
* **INTERVAL**: Es el intervalo en minutos para el cual el cron se va a ejecutar.


### Ejecucion

Para usar la imagen simplemente ejecutar:

```sh
docker run -d -e INTERVAL=1 -e APIKEY=myapikey -e DOMAIN=example.freedns.org alexiscaspell/dynu-dns-updater:latest
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contribucion

Este proyecto como tantos otros esta abierto para uso libre de la comunidad, sentite libre de sugerir ideas o cosas a mejorar.

Si queres solucionar un problema o agregar alguna funcionalidad, forkea el proyecto y crea un pull request, tambien podes abrir un issue con el prefijo **Mejora-**

1. Forkea el Proyecto
2. Crea un nuevo Branch (`git checkout -b feature/MiFeature`)
3. Commitea tus cambios (`git commit -m 'Add some Feature'`)
4. Pushea el Branch (`git push origin feature/MiFeature`)
5. Abri un Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contacto

Alexis Taberna - alexiscaspell@gmail.com

Link del proyecto: [https://github.com/alexiscaspell/dynu-dns-updater](https://github.com/alexiscaspell/dynu-dns-updater)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/alexiscaspell/dynu-dns-updater.svg?style=for-the-badge
[contributors-url]: https://github.com/alexiscaspell/dynu-dns-updater/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/alexiscaspell/dynu-dns-updater.svg?style=for-the-badge
[forks-url]: https://github.com/alexiscaspell/dynu-dns-updater/network/members
[stars-shield]: https://img.shields.io/github/stars/alexiscaspell/dynu-dns-updater.svg?style=for-the-badge
[stars-url]: https://github.com/alexiscaspell/dynu-dns-updater/stargazers
[issues-shield]: https://img.shields.io/github/issues/alexiscaspell/dynu-dns-updater.svg?style=for-the-badge
[issues-url]: https://github.com/alexiscaspell/dynu-dns-updater/issues
[license-shield]: https://img.shields.io/github/license/alexiscaspell/dynu-dns-updater.svg?style=for-the-badge
[license-url]: https://github.com/alexiscaspell/dynu-dns-updater/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/alexis-taberna-824690147
[product-screenshot]: https://github.com/alexiscaspell/dynu-dns-updater/blob/main/img/screenshot1.png
[Dynu]: https://github.com/alexiscaspell/dynu-dns-updater/blob/main/img/logodynu.ico
[Docker]: https://github.com/alexiscaspell/dynu-dns-updater/blob/main/img/logodocker.ico