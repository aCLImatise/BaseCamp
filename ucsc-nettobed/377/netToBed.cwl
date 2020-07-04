class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/netToBed.cwl
inputs:
- id: max_gap
  doc: '- break up at gaps of given size or more'
  type: string
  inputBinding:
    prefix: -maxGap
- id: min_fill
  doc: '- only include fill of given size of above.'
  type: string
  inputBinding:
    prefix: -minFill
- id: in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- netToBed
