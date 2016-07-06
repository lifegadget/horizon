# Horizon Container
> leverage the beauty and simplicity of [Horizon](http://horizon.io) within the beauty and simplicity of [Docker](http://docker.com)

## Labelling Strategy
The following labels will always be available:

- `latest` - the latest version of horizon available on npm
- _Specific versions_ - (aka, `1.1.1`, `1.1.3`, etc.) gives a deterministic version of the Horizon server
- `dev` - the latest version of horizon on npm but with development settings all set appropriately for dev. The dev label runs the same Dockerfile but overrides the following:
  ````Dockerfile
  FROM lifegadget/horizon

  ENV HZ_DEV --dev
  ENV SECURE no
  ENV PERMISSIONS no
  ENV AUTO_CREATE_COLLECTION --auto-create-collection
  ENV AUTO_CREATE_INDEX --auto-create-index
  ````
