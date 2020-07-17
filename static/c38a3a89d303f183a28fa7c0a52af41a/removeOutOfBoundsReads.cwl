class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/removeOutOfBoundsReads.pl.cwl
inputs:
- id: tag_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- removeOutOfBoundsReads.pl
