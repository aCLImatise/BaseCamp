class: CommandLineTool
id: planemo_docker_build.cwl
inputs:
- id: in_docker_image_cache
  doc: "Command used to launch docker (defaults to\ndocker)."
  type: string?
  inputBinding:
    prefix: --docker_image_cache
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
- id: in_image_dot
  doc: "% planemo docker_build bowtie2.xml # asssumes Dockerfile in same dir\n% planemo\
    \ docker_shell --from_tag bowtie2.xml"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.2--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- docker_build
