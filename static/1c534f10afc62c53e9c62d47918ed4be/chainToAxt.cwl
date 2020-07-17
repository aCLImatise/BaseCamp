class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chainToAxt.cwl
inputs:
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
- id: in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t_nib_dir_or_two_bit
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: q_nib_dir_or_two_bit
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_do_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- chainToAxt
