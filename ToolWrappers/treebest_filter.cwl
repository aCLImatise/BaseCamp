class: CommandLineTool
id: treebest_filter.cwl
inputs:
- id: in_nucleotide_alignment
  doc: nucleotide alignment
  type: boolean
  inputBinding:
    prefix: -n
- id: in_collapse_alternative_splicing
  doc: collapse alternative splicing
  type: boolean
  inputBinding:
    prefix: -g
- id: in_apply_alignment_mask
  doc: do not apply alignment mask
  type: boolean
  inputBinding:
    prefix: -M
- id: in_mask_lowscoring_segments
  doc: do not mask low-scoring segments
  type: boolean
  inputBinding:
    prefix: -N
- id: in_quality_cutoff
  doc: quality cut-off [15]
  type: long
  inputBinding:
    prefix: -F
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treebest
- filter
