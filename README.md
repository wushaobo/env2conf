# env2conf

The basic idea is to generate configuration files from some given templates using environment variables.

Especially for the initialization of docker containers, it is better to pass in env vars rather than get the config files ready outside of the container.

## Install

This tool could be installed by pip as an executable.

```
$ pip install env2conf
```

## Run

You can run it simply with **one command**, specifying the path of your template files and the location where the expected output is.

```
$ env2conf -i ./templates -o ./output
```

Checkout the help info

```
$ env2conf -h
usage: env2conf [-h] -i TEMPLATES_DIR -o OUTPUT_DIR

A tool for the config files generation from environment variables.

optional arguments:
  -h, --help        show this help message and exit
  -i TEMPLATES_DIR  existing templates dir
  -o OUTPUT_DIR     expected output dir

```


## Sample

You can checkout the `sample` in the repository, and play it inside the folder with **one command**.

```
$ ./run_sample.sh
```

The console will be as follows.

```
HTTP_PORT=8765 BUCKET_NAME=sample_bucket_name CALLBACK_URL=http://example.com/callback HLS_PATH=/sample/path venv/bin/env2conf -i ./templates -o ./output

Done. Check out the output files at ./output

```

### Explanation sample

#### Given environment variables

Some of the given env vars

```
HTTP_PORT=8765
BUCKET_NAME=sample_bucket_name
......
```

#### Given templates

The content of the given template file `templates/sample2.yml.j2`

```
bucketName: {{ BUCKET_NAME }}

server:
  applicationConnectors:
    - type: http
      port: {{ HTTP_PORT }}

```

#### Generated output

The content of the generated output file `output/sample2.yml`

```
bucketName: sample_bucket_name

server:
  applicationConnectors:
    - type: http
      port: 8765
```