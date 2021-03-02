class: CommandLineTool
id: sstofa.cwl
inputs:
- id: in_sec_struct_file
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
  dockerPull: quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0
cwlVersion: v1.1
baseCommand:
- sstofa
