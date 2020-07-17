class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/netToAxt.cwl
inputs:
- id: q_chain
  doc: '- net is with respect to the q side of chains.'
  type: boolean
  inputBinding:
    prefix: -qChain
- id: max_gap
  doc: '- maximum size of gap before breaking. Default 100'
  type: string
  inputBinding:
    prefix: -maxGap
- id: gap_out
  doc: '- Output gap sizes to file'
  type: string
  inputBinding:
    prefix: -gapOut
- id: no_split
  doc: "- Don't split chain when there is an insertion of another chain"
  type: boolean
  inputBinding:
    prefix: -noSplit
- id: in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target_dot_two_bit
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: query_dot_two_bit
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: out_do_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- netToAxt
