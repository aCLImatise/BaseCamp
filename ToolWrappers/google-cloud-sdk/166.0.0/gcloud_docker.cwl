class: CommandLineTool
id: gcloud_docker.cwl
inputs:
- id: in_authorize_only
  doc: "Configure docker authorization only, do not launch the docker\ncommand-line."
  type: boolean
  inputBinding:
    prefix: --authorize-only
- id: in_docker_host
  doc: "The URL to connect to Docker Daemon. Format: tcp://host:port or\nunix:///path/to/socket."
  type: File
  inputBinding:
    prefix: --docker-host
- id: in_server
  doc: ",[SERVER,...], -s SERVER,[SERVER,...]; default=\"gcr.io,us.gcr.io,eu.gcr.io,asia.gcr.io,l.gcr.io,launcher.gcr.io,us-mirror.gcr.io,eu-mirror.gcr.io,asia-mirror.gcr.io,mirror.gcr.io\"\
    \nThe address of the Google Cloud Registry."
  type: string
  inputBinding:
    prefix: --server
- id: in_registry
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_directly_dot
  doc: 'More information on Google Container Registry can be found here:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- docker
