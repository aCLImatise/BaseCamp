class: CommandLineTool
id: bigWigMerge.cwl
inputs:
- id: threshold
  doc: =0.N - don't output values at or below this threshold. Default is 0.0
  type: boolean
  inputBinding:
    prefix: -threshold
- id: adjust
  doc: =0.N - add adjustment to each value
  type: boolean
  inputBinding:
    prefix: -adjust
- id: values
  doc: than this are clipped to this value
  type: string
  inputBinding:
    prefix: '- values'
- id: in_list
  doc: are lists of file names of bigWigs
  type: File
  inputBinding:
    prefix: -inList
- id: merged
  doc: is maximum from input files rather than sum
  type: string
  inputBinding:
    prefix: '- merged'
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigMerge
