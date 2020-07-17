class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ldhelmet_args.cwl
inputs:
- id: ld_helmet
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
- ldhelmet
- args
