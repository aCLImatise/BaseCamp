class: CommandLineTool
id: roundtrip.cwl
inputs:
- id: in_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openbabel:3.1.1
cwlVersion: v1.1
baseCommand:
- roundtrip
