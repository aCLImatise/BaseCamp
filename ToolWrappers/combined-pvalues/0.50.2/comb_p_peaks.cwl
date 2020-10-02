class: CommandLineTool
id: comb_p_peaks.cwl
inputs:
- id: in_dist
  doc: "Maximum dist to skip before finding a seed/thresh\nvalue. If this number is\
    \ exceeded, the region is\nended."
  type: long
  inputBinding:
    prefix: --dist
- id: in_seed
  doc: "A value must be at least this large/small in order to\nseed a region."
  type: string
  inputBinding:
    prefix: --seed
- id: in_threshold
  doc: "After seeding, a value of at least this number can\nextend a region."
  type: long
  inputBinding:
    prefix: --threshold
- id: in_invert
  doc: "by default, the test is for a value less-than seed or\nthresh--e.g. for p-values.\
    \ If this flag is specified,\nthe test is for greater-than--e.g. for scores or\n\
    -log10(p-values)"
  type: boolean
  inputBinding:
    prefix: --invert
- id: in_column_number_containing
  doc: "column number containing the value for which to find\npeaks.\n"
  type: long
  inputBinding:
    prefix: -c
- id: in_find
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_peaks
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_troughs
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_sorted
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- comb-p
- peaks
