class: CommandLineTool
id: fio_calc_Example.cwl
inputs:
- id: in_fio
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_calc
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_property_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_expression
  doc: ''
  type: string
  inputBinding:
    position: 3
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
- calc
- Example
