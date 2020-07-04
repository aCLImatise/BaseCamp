class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/addGeneAnnotation.pl.cwl
inputs:
- id: data_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: organism
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- addGeneAnnotation.pl
