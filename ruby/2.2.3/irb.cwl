class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/irb.cwl
inputs:
- id: program_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- irb
