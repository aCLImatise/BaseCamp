class: CommandLineTool
id: domainsMergeToBed.pl.cwl
inputs:
- id: chr1
  doc: '197195432'
  type: string
  inputBinding:
    position: 0
- id: chr2
  doc: '181748087'
  type: string
  inputBinding:
    position: 1
- id: chr3
  doc: '159599783    '
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- domainsMergeToBed.pl
