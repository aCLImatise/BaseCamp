class: CommandLineTool
id: prefixEditDistance_matchLimitGenerate.cwl
inputs:
- id: in_mine_value
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_max_evalue
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_step
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prefixEditDistance-matchLimitGenerate
