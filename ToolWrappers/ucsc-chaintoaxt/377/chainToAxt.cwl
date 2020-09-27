class: CommandLineTool
id: chainToAxt.cwl
inputs:
- id: in_max_gap
  doc: gap sized allowed without breaking, default 100
  type: long
  inputBinding:
    prefix: -maxGap
- id: in_max_chain
  doc: chain size allowed without breaking, default 1073741823
  type: long
  inputBinding:
    prefix: -maxChain
- id: in_min_score
  doc: score of chain
  type: string
  inputBinding:
    prefix: -minScore
- id: in_mini_d
  doc: percentage ID within blocks
  type: string
  inputBinding:
    prefix: -minId
- id: in_bed
  doc: Output bed instead of axt
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_t_nib_dir_or_two_bit
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_q_nib_dir_or_two_bit
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chainToAxt
