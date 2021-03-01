class: CommandLineTool
id: segment_juncs.cwl
inputs:
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_segment_dot_jun_cs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_segment_dot_insertions
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_segment_dot_deletions
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_left_reads_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_left_reads_dot_bwt_out
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- segment_juncs
