class: CommandLineTool
id: read_file_names.cwl
inputs:
- id: in_in
  doc: '(1 arg) :    bank input'
  type: boolean?
  inputBinding:
    prefix: -in
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/discosnp:2.5.4--h8b12597_0
cwlVersion: v1.1
baseCommand:
- read_file_names
