class: CommandLineTool
id: ../../../json2gff_ARGS.cwl
inputs:
- id: json_two_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- json2gff
- ARGS
