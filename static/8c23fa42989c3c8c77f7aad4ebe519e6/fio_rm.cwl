class: CommandLineTool
id: fio_rm.cwl
inputs:
- id: in_layer
  doc: Name of layer to remove.
  type: string?
  inputBinding:
    prefix: --layer
- id: in_input
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
  dockerPull: quay.io/biocontainers/fiona:1.8.6
cwlVersion: v1.1
baseCommand:
- fio
- rm
