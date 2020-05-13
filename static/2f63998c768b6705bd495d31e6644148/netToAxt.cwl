class: CommandLineTool
id: netToAxt.cwl
inputs:
- id: in_net
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target_2bit
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: query_2bit
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: out_a_xt
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: q_chain
  doc: with respect to the q side of chains.
  type: string
  inputBinding:
    prefix: -qChain
- id: maximum
  doc: of gap before breaking. Default 100
  type: string
  inputBinding:
    prefix: '- maximum'
- id: output
  doc: sizes to file
  type: string
  inputBinding:
    prefix: '- Output'
- id: no_split
  doc: "'t split chain when there is an insertion of another chain"
  type: boolean
  inputBinding:
    prefix: -noSplit
outputs: []
cwlVersion: v1.1
baseCommand:
- netToAxt
