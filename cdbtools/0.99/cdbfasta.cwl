class: CommandLineTool
id: cdbfasta.cwl
inputs:
- id: v
  doc: program version and exit
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- cdbfasta
