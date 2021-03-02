class: CommandLineTool
id: rsq.cwl
inputs:
- id: in_apply_frequency_cutoff
  doc: ': apply a frequency cutoff'
  type: long?
  inputBinding:
    prefix: -c
- id: in_test_significance_correlation
  doc: ': test significance of correlation of'
  type: long?
  inputBinding:
    prefix: -t
- id: in_maximum_distance_bw
  doc: ": maximum distance b/w markers\nLD with distance with <int> permutations\n"
  type: long?
  inputBinding:
    prefix: -m
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsq
