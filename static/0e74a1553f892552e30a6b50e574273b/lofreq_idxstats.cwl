class: CommandLineTool
id: lofreq_idxstats.cwl
inputs:
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_idx_stats
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lofreq
- idxstats
