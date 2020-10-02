class: CommandLineTool
id: planemo_docker_build.cwl
inputs:
- id: in_docker_file
  doc: "--docker_image_cache TEXT\n--docker_cmd TEXT               Command used to\
    \ launch docker (defaults to\ndocker).\n--docker_sudo / --no_docker_sudo\nFlag\
    \ to use sudo when running docker.\n--docker_sudo_cmd TEXT          sudo command\
    \ to use when --docker_sudo is\nenabled (defaults to sudo).\n--docker_host TEXT\
    \              Docker host to target when executing docker\ncommands (defaults\
    \ to localhost).\n--help                          Show this message and exit.\n"
  type: string
  inputBinding:
    prefix: --dockerfile
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
cwlVersion: v1.1
baseCommand:
- planemo
- docker_build
