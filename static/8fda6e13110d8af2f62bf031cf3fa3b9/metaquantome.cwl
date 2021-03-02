class: CommandLineTool
id: metaquantome.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metaquantome:2.0.1--py_0
cwlVersion: v1.1
baseCommand:
- metaquantome
