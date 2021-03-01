class: CommandLineTool
id: netToAxt.cwl
inputs:
- id: in_q_chain
  doc: '- net is with respect to the q side of chains.'
  type: boolean?
  inputBinding:
    prefix: -qChain
- id: in_max_gap
  doc: '- maximum size of gap before breaking. Default 100'
  type: long?
  inputBinding:
    prefix: -maxGap
- id: in_gap_out
  doc: '- Output gap sizes to file'
  type: File?
  inputBinding:
    prefix: -gapOut
- id: in_no_split
  doc: "- Don't split chain when there is an insertion of another chain"
  type: boolean?
  inputBinding:
    prefix: -noSplit
- id: in_in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_target_dot_two_bit
  doc: ''
  type: double
  inputBinding:
    position: 2
- id: in_query_dot_two_bit
  doc: ''
  type: double
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gap_out
  doc: '- Output gap sizes to file'
  type: File?
  outputBinding:
    glob: $(inputs.in_gap_out)
hints: []
cwlVersion: v1.1
baseCommand:
- netToAxt
