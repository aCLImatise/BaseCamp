class: CommandLineTool
id: chainToAxt.cwl
inputs:
- id: in_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tnibdiror2bit
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: qnibdiror2bit
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_a_xt
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: max_gap
  doc: gap sized allowed without breaking, default 100
  type: long
  inputBinding:
    prefix: -maxGap
- id: max_chain
  doc: chain size allowed without breaking, default 1073741823
  type: long
  inputBinding:
    prefix: -maxChain
- id: min_score
  doc: score of chain
  type: long
  inputBinding:
    prefix: -minScore
- id: mini_d
  doc: percentage ID within blocks
  type: long
  inputBinding:
    prefix: -minId
- id: bed
  doc: Output bed instead of axt
  type: boolean
  inputBinding:
    prefix: -bed
outputs: []
cwlVersion: v1.1
baseCommand:
- chainToAxt
