class: CommandLineTool
id: planemo_docker_shell.cwl
inputs:
- id: from_tag
  doc: Treat the tool's Docker container identifier as a locally cached tag.
  type: boolean
  inputBinding:
    prefix: --from_tag
- id: shell
  doc: Shell to launch in container (defaults to /bin/bash).
  type: string
  inputBinding:
    prefix: --shell
- id: docker_cmd
  doc: Command used to launch docker (defaults to docker).
  type: string
  inputBinding:
    prefix: --docker_cmd
- id: docker_sudo
  doc: / --no_docker_sudo Flag to use sudo when running docker.
  type: boolean
  inputBinding:
    prefix: --docker_sudo
- id: docker_sudo_cmd
  doc: sudo command to use when --docker_sudo is enabled (defaults to sudo).
  type: string
  inputBinding:
    prefix: --docker_sudo_cmd
- id: docker_host
  doc: Docker host to target when executing docker commands (defaults to localhost).
  type: string
  inputBinding:
    prefix: --docker_host
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- docker_shell
