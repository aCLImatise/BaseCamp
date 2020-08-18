class: CommandLineTool
id: ../../../cdbfasta.cwl
inputs:
- id: program_version_exit
  doc: program version and exit
  type: string
  inputBinding:
    prefix: -v
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cdbfasta
