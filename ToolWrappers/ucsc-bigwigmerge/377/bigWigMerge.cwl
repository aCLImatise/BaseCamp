class: CommandLineTool
id: bigWigMerge.cwl
inputs:
- id: in_threshold
  doc: "- don't output values at or below this threshold. Default is 0.0"
  type: long?
  inputBinding:
    prefix: -threshold
- id: in_adjust
  doc: '- add adjustment to each value'
  type: long?
  inputBinding:
    prefix: -adjust
- id: in_clip
  doc: '- values higher than this are clipped to this value'
  type: string?
  inputBinding:
    prefix: -clip
- id: in_in_list
  doc: '- input file are lists of file names of bigWigs'
  type: boolean?
  inputBinding:
    prefix: -inList
- id: in_max
  doc: '- merged value is maximum from input files rather than sum'
  type: boolean?
  inputBinding:
    prefix: -max
- id: in_inn_dot_bw
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bigWigMerge
