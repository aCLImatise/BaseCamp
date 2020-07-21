class: CommandLineTool
id: ../../../bigWigMerge.cwl
inputs:
- id: threshold
  doc: "- don't output values at or below this threshold. Default is 0.0"
  type: string
  inputBinding:
    prefix: -threshold
- id: adjust
  doc: '- add adjustment to each value'
  type: string
  inputBinding:
    prefix: -adjust
- id: clip
  doc: '- values higher than this are clipped to this value'
  type: string
  inputBinding:
    prefix: -clip
- id: in_list
  doc: '- input file are lists of file names of bigWigs'
  type: boolean
  inputBinding:
    prefix: -inList
- id: max
  doc: '- merged value is maximum from input files rather than sum'
  type: boolean
  inputBinding:
    prefix: -max
- id: inn_dot_bw
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_bed_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigMerge
