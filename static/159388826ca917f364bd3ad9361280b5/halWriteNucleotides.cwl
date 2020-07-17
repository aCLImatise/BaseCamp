class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halWriteNucleotides.cwl
inputs:
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tsv_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halWriteNucleotides
