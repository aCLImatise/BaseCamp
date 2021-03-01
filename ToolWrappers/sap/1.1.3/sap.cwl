class: CommandLineTool
id: sap.cwl
inputs:
- id: in_file_one_dot_pdb
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_file_two_dot_pdb
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_one_two_one
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sap:1.1.3--h516909a_0
cwlVersion: v1.1
baseCommand:
- sap
