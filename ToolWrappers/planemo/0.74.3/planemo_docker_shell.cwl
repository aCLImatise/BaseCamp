class: CommandLineTool
id: planemo_docker_shell.cwl
inputs:
- id: in_from_tag
  doc: "Treat the tool's Docker container identifier\nas a locally cached tag."
  type: boolean?
  inputBinding:
    prefix: --from_tag
- id: in_shell
  doc: "Shell to launch in container (defaults to\n/bin/bash)."
  type: string?
  inputBinding:
    prefix: --shell
- id: in_docker_cmd
  doc: "Command used to launch docker (defaults to\ndocker)."
  type: string?
  inputBinding:
    prefix: --docker_cmd
- id: in_no_docker_sudo
  doc: Flag to use sudo when running docker.
  type: boolean?
  inputBinding:
    prefix: --no_docker_sudo
- id: in_docker_sudo_cmd
  doc: "sudo command to use when --docker_sudo is\nenabled (defaults to sudo)."
  type: string?
  inputBinding:
    prefix: --docker_sudo_cmd
- id: in_docker_host
  doc: "Docker host to target when executing docker\ncommands (defaults to localhost)."
  type: string?
  inputBinding:
    prefix: --docker_host
- id: in_tool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.3--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- docker_shell
