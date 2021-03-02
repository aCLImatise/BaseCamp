class: CommandLineTool
id: pslReps.cwl
inputs:
- id: in_no_head
  doc: Don't add PSL header.
  type: boolean?
  inputBinding:
    prefix: -nohead
- id: in_ignore_size
  doc: Will not weigh as much in favor of larger alignments.
  type: boolean?
  inputBinding:
    prefix: -ignoreSize
- id: in_no_introns
  doc: "Will not penalize for not having introns when calculating\nsize factor."
  type: boolean?
  inputBinding:
    prefix: -noIntrons
- id: in_single_hit
  doc: Takes single best hit, not splitting into parts.
  type: boolean?
  inputBinding:
    prefix: -singleHit
- id: in_min_cover
  doc: Minimum coverage to output.  Default is 0.
  type: long?
  inputBinding:
    prefix: -minCover
- id: in_ignore_ns
  doc: Ignore Ns when calculating minCover.
  type: boolean?
  inputBinding:
    prefix: -ignoreNs
- id: in_min_ali
  doc: Minimum alignment ratio.  Default is 0.93.
  type: long?
  inputBinding:
    prefix: -minAli
- id: in_near_top
  doc: "How much can deviate from top and be taken.\nDefault is 0.01."
  type: long?
  inputBinding:
    prefix: -nearTop
- id: in_min_near_top_size
  doc: "Minimum size of alignment that is near top\nfor alignment to be kept.  Default\
    \ 30."
  type: long?
  inputBinding:
    prefix: -minNearTopSize
- id: in_cover_q_sizes
  doc: "Tab-separate file with effective query sizes.\nWhen used with -minCover, this\
    \ allows polyAs\nto be excluded from the coverage calculation.\n"
  type: File?
  inputBinding:
    prefix: -coverQSizes
- id: in_in_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pslReps
