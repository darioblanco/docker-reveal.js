# docker-reveal.js

Docker image that let you run Reveal.js slideshows with ease, being able to also load Markdown slides.

## Build

You can build this image locally.

```
$ docker build -t darioblanco/docker-reveal.js:latest .
```

## Installation

This image is automatically built each time there is an update in the `reveal.js` official repository. Rely on docker hub for any updates.

```
$ docker pull darioblanco/docker-reveal.js:latest
```

## Run with your slideshow

Create a directory in your filesystem where you'll author and run your reveal.js slideshow.

```
$ mkdir <slideshow_folder>
```

Run a Docker container and load the slide folder as a volume. Reveal.js will pick the folder.

```
$ docker run -d -v $(pwd):/reveal.js/ -p 8000:8000 "darioblanco/docker-reveal.js:latest"
```

Point your browser to http://127.0.0.1:8000/slideshow_folder
