class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/segment_juncs.cwl
inputs:
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: segment_dot_jun_cs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: segment_dot_insertions
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: segment_dot_deletions
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: left_reads_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: left_reads_dot_bwt_out
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- segment_juncs
