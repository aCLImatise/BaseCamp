class: CommandLineTool
id: chakin_util_launch_docker_image.cwl
inputs:
- id: in_background
  doc: Launch the image in the background
  type: boolean?
  inputBinding:
    prefix: --background
- id: in_no_yeast
  doc: Disable loading of example yeast data
  type: boolean?
  inputBinding:
    prefix: --no_yeast
- id: in_none
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- chakin
- util
- launch_docker_image
