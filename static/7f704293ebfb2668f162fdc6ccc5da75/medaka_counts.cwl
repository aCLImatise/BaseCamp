class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medaka_counts.cwl
inputs:
- id: print
  doc: 'print counts. (default: False)'
  type: boolean
  inputBinding:
    prefix: --print
- id: d_types
  doc: 'perform a multi-datatype tests. (default: None)'
  type: string[]
  inputBinding:
    prefix: --dtypes
- id: norm
  doc: 'additional normalisation tests. (total, fwd_rev) (default: None)'
  type: string[]
  inputBinding:
    prefix: --norm
- id: bam
  doc: alignment file.
  type: string
  inputBinding:
    position: 0
- id: region
  doc: alignment region to sample.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka_counts
