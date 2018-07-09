othillo/symfony-docs-builder
============================

Wrapper for building Symfony documentation.

# How to 

1. Build the docker image

```
docker build --tag=symfony-docs-builder .
```

2. Check the available options:

```
docker run --rm symfony-docs-builder
```

3. Create the documentation

```
# for example EPUB output
docker run --rm -v "${PWD}/output:/output" symfony-docs-builder epub
```

4. Find the results in the `output` directory
