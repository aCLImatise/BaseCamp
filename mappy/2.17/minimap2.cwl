class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/minimap2.py.cwl
inputs:
- id: preset_sr_mappb
  doc: 'preset: sr, map-pb, map-ont, asm5, asm10 or splice'
  type: string
  inputBinding:
    prefix: -x
- id: mininum_number_minimizers
  doc: mininum number of minimizers
  type: long
  inputBinding:
    prefix: -n
- id: mininum_chaining_score
  doc: mininum chaining score
  type: long
  inputBinding:
    prefix: -m
- id: kmer_length
  doc: k-mer length
  type: long
  inputBinding:
    prefix: -k
- id: minimizer_window_length
  doc: minimizer window length
  type: long
  inputBinding:
    prefix: -w
- id: band_width
  doc: band width
  type: long
  inputBinding:
    prefix: -r
- id: output_cs_tag
  doc: output the cs tag
  type: boolean
  inputBinding:
    prefix: -c
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- minimap2.py
