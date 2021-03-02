class: CommandLineTool
id: rgi_galaxy.cwl
inputs:
- id: in_galaxy_database
  doc: path to CARD data and blast databases
  type: File?
  inputBinding:
    prefix: --galaxy_database
- id: in_debug
  doc: debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgi
- galaxy
