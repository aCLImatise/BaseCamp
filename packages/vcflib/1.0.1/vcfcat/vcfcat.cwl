class: CommandLineTool
id: vcfcat.cwl
inputs:
- id: in_file_one
  doc: ''
  type: long?
  inputBinding:
    position: 0
- id: in_file_two
  doc: ''
  type: long?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1
cwlVersion: v1.1
baseCommand:
- vcfcat
