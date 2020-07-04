class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halIndels.cwl
inputs:
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halIndels
