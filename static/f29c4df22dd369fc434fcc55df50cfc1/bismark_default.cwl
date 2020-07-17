class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bismark_default.cwl
inputs:
- id: bismark
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_folder
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bismark
- default
