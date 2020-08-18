class: CommandLineTool
id: ../../../pairaln.cwl
inputs:
- id: try_both_strands
  doc: Try both strands
  type: boolean
  inputBinding:
    prefix: -s
- id: alignment_penalty_match
  doc: 'Alignment penalty: match, [2]'
  type: long
  inputBinding:
    prefix: -M
- id: alignment_penalty_mismatch
  doc: 'Alignment penalty: mismatch, [-5]'
  type: long
  inputBinding:
    prefix: -X
- id: alignment_penalty_insertion
  doc: 'Alignment penalty: insertion or deletion, [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: alignment_penalty_gap
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: alignment_penalty_read
  doc: 'Alignment penalty: read end clipping, 0: distable HSP extension, otherwise
    set to -100 or other [-100]'
  type: long
  inputBinding:
    prefix: -T
- id: bandwidth
  doc: Bandwidth, [800]
  type: long
  inputBinding:
    prefix: -W
- id: output_alignment
  doc: Output alignment
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- pairaln
