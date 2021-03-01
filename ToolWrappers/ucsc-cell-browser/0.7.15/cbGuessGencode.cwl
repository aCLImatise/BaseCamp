class: CommandLineTool
id: cbGuessGencode.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0
cwlVersion: v1.1
baseCommand:
- cbGuessGencode
