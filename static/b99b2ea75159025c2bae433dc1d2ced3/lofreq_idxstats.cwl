class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lofreq_idxstats.cwl
inputs:
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: idx_stats
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- idxstats
