class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filterGenes.pl.cwl
inputs:
- id: name_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dbfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- filterGenes.pl
