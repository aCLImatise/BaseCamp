class: CommandLineTool
id: netToBed.cwl
inputs:
- id: in_max_gap
  doc: '- break up at gaps of given size or more'
  type: long?
  inputBinding:
    prefix: -maxGap
- id: in_min_fill
  doc: '- only include fill of given size of above.'
  type: long?
  inputBinding:
    prefix: -minFill
- id: in_in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- netToBed
