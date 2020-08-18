class: CommandLineTool
id: ../../../pslReps.cwl
inputs:
- id: no_head
  doc: Don't add PSL header.
  type: boolean
  inputBinding:
    prefix: -nohead
- id: ignore_size
  doc: Will not weigh as much in favor of larger alignments.
  type: boolean
  inputBinding:
    prefix: -ignoreSize
- id: no_introns
  doc: Will not penalize for not having introns when calculating size factor.
  type: boolean
  inputBinding:
    prefix: -noIntrons
- id: single_hit
  doc: Takes single best hit, not splitting into parts.
  type: boolean
  inputBinding:
    prefix: -singleHit
- id: min_cover
  doc: Minimum coverage to output.  Default is 0.
  type: string
  inputBinding:
    prefix: -minCover
- id: ignore_ns
  doc: Ignore Ns when calculating minCover.
  type: boolean
  inputBinding:
    prefix: -ignoreNs
- id: min_ali
  doc: Minimum alignment ratio.  Default is 0.93.
  type: string
  inputBinding:
    prefix: -minAli
- id: near_top
  doc: How much can deviate from top and be taken. Default is 0.01.
  type: string
  inputBinding:
    prefix: -nearTop
- id: min_near_top_size
  doc: Minimum size of alignment that is near top for alignment to be kept.  Default
    30.
  type: string
  inputBinding:
    prefix: -minNearTopSize
- id: cover_q_sizes
  doc: Tab-separate file with effective query sizes. When used with -minCover, this
    allows polyAs to be excluded from the coverage calculation.
  type: File
  inputBinding:
    prefix: -coverQSizes
- id: in_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_psr
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pslReps
