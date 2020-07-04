class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genomestrip.cwl
inputs:
- id: java_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: subcommand_args
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- genomestrip
