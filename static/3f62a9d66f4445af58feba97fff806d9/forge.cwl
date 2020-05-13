class: CommandLineTool
id: forge.cwl
inputs:
- id: ann
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dna
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pseudo_count
  doc: '[1]   (absolute number for all models)'
  type: double
  inputBinding:
    prefix: -pseudocount
- id: pseudo_coding
  doc: '[0.0] (eg. 0.05)'
  type: double
  inputBinding:
    prefix: -pseudoCoding
- id: pseudo_intron
  doc: '[0.0]'
  type: double
  inputBinding:
    prefix: -pseudoIntron
- id: pseudo_inter
  doc: '[0.0]'
  type: double
  inputBinding:
    prefix: -pseudoInter
- id: min_counts
  doc: '[0]'
  type: boolean
  inputBinding:
    prefix: -min-counts
- id: lc_mask
  doc: '[-fragmentN]'
  type: boolean
  inputBinding:
    prefix: -lcmask
- id: utr5_length
  doc: '[50]'
  type: long
  inputBinding:
    prefix: -utr5-length
- id: utr5_offset
  doc: '[10]'
  type: long
  inputBinding:
    prefix: -utr5-offset
- id: utr3_length
  doc: '[50]'
  type: long
  inputBinding:
    prefix: -utr3-length
- id: utr3_offset
  doc: '[10]'
  type: long
  inputBinding:
    prefix: -utr3-offset
- id: explicit
  doc: '[250]'
  type: long
  inputBinding:
    prefix: -explicit
- id: min_intron
  doc: '[30]'
  type: long
  inputBinding:
    prefix: -min-intron
- id: boost
  doc: (file of ID <int>)
  type: File
  inputBinding:
    prefix: -boost
outputs: []
cwlVersion: v1.1
baseCommand:
- forge
