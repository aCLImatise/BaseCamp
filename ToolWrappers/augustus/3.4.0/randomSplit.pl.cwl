class: CommandLineTool
id: randomSplit.pl.cwl
inputs:
- id: in_dbfile
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_size
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
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- randomSplit.pl
