class: CommandLineTool
id: minimap2.py.cwl
inputs:
- id: in_preset_sr_mappb
  doc: 'preset: sr, map-pb, map-ont, asm5, asm10 or splice'
  type: long?
  inputBinding:
    prefix: -x
- id: in_mininum_number_minimizers
  doc: mininum number of minimizers
  type: long?
  inputBinding:
    prefix: -n
- id: in_mininum_chaining_score
  doc: mininum chaining score
  type: long?
  inputBinding:
    prefix: -m
- id: in_kmer_length
  doc: k-mer length
  type: long?
  inputBinding:
    prefix: -k
- id: in_minimizer_window_length
  doc: minimizer window length
  type: long?
  inputBinding:
    prefix: -w
- id: in_band_width
  doc: band width
  type: long?
  inputBinding:
    prefix: -r
- id: in_output_cs_tag
  doc: output the cs tag
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_ref_dot_fa
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
- minimap2.py
