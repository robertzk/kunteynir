% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/build_image.R
\name{build_image}
\alias{build_image}
\title{Build a docker image with server that serves model$predict and push it to a registry.}
\usage{
build_image(model, name, registry = "", dockerfile = NULL,
  server_script = NULL)
}
\arguments{
\item{model}{tundraContainer. A tundra container that contains necessary munge
procedures and the predict function.}

\item{name}{character. name of the resulting docker image}

\item{registry}{character. Where will you push your image? Leave blank for
pushing to docker hub, or specify your private registry.}

\item{dockerfile}{character optional. You can specify a custom dockerfile
instead of the default one shipped with kunteynir.}

\item{server_script}{character optional. You can specify a custom server script
that will be used to start serving the model inside the docker container.}
}
\description{
Available routes:
}
\details{
GET/POST          /            "OK"
GET/POST          /ping        "pong"
GET/POST          /predict     serialized output of predict as JSON
}

