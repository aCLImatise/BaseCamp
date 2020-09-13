class: CommandLineTool
id: ../../../forge.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_pseudo_count
  doc: '[1]   (absolute number for all models)'
  type: double
  inputBinding:
    prefix: -pseudocount
- id: in_pseudo_coding
  doc: '[0.0] (eg. 0.05)'
  type: double
  inputBinding:
    prefix: -pseudoCoding
- id: in_pseudo_intron
  doc: '[0.0]'
  type: double
  inputBinding:
    prefix: -pseudoIntron
- id: in_pseudo_inter
  doc: '[0.0]'
  type: double
  inputBinding:
    prefix: -pseudoInter
- id: in_min_counts
  doc: '[0]'
  type: boolean
  inputBinding:
    prefix: -min-counts
- id: in_lc_mask
  doc: '[-fragmentN]'
  type: boolean
  inputBinding:
    prefix: -lcmask
- id: in_utr_five_length
  doc: '[50]'
  type: long
  inputBinding:
    prefix: -utr5-length
- id: in_utr_five_offset
  doc: '[10]'
  type: long
  inputBinding:
    prefix: -utr5-offset
- id: in_utr_three_length
  doc: '[50]'
  type: long
  inputBinding:
    prefix: -utr3-length
- id: in_utr_three_offset
  doc: '[10]'
  type: long
  inputBinding:
    prefix: -utr3-offset
- id: in_explicit
  doc: '[250]'
  type: long
  inputBinding:
    prefix: -explicit
- id: in_min_intron
  doc: '[30]'
  type: long
  inputBinding:
    prefix: -min-intron
- id: in_boost
  doc: (file of ID <int>)
  type: File
  inputBinding:
    prefix: -boost
- id: in_ann
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dna
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- forge
