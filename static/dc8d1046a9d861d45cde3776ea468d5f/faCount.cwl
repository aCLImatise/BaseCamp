class: CommandLineTool
id: ../../../faCount.cwl
inputs:
- id: summary
  doc: show only summary statistics
  type: boolean
  inputBinding:
    prefix: -summary
- id: din_uc
  doc: include statistics on dinucletoide frequencies
  type: boolean
  inputBinding:
    prefix: -dinuc
- id: strands
  doc: count bases on both strands
  type: boolean
  inputBinding:
    prefix: -strands
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- faCount
