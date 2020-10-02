class: CommandLineTool
id: pairaln.cwl
inputs:
- id: in_try_both_strands
  doc: Try both strands
  type: boolean
  inputBinding:
    prefix: -s
- id: in_alignment_penalty_match
  doc: 'Alignment penalty: match, [2]'
  type: long
  inputBinding:
    prefix: -M
- id: in_alignment_penalty_mismatch
  doc: 'Alignment penalty: mismatch, [-5]'
  type: long
  inputBinding:
    prefix: -X
- id: in_alignment_penalty_insertion
  doc: 'Alignment penalty: insertion or deletion, [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: in_alignment_penalty_gap
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: in_alignment_penalty_read
  doc: 'Alignment penalty: read end clipping, 0: distable HSP extension, otherwise
    set to -100 or other [-100]'
  type: long
  inputBinding:
    prefix: -T
- id: in_output_alignment
  doc: Output alignment
  type: boolean
  inputBinding:
    prefix: -a
- id: in_a_aggcc_tt
  doc: '>read2'
  type: string
  inputBinding:
    position: 0
- id: in_aag_cctt
  doc: and so on, read3, read4, ...
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pairaln
