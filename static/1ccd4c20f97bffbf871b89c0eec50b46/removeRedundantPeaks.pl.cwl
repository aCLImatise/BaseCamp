class: CommandLineTool
id: removeRedundantPeaks.pl.cwl
inputs:
- id: in_palindromic
  doc: "(will remove peaks that overlap >50% and are on separate strands,\nthat are\
    \ likely representative of palindromic motif recognition)"
  type: boolean?
  inputBinding:
    prefix: -palindromic
- id: in_blat
  doc: <#> (Where % is the percentage match to be considered redundant, default=0.33)
  type: boolean?
  inputBinding:
    prefix: -blat
- id: in_size
  doc: <#> (size of peaks to be used for sequence similarity, default=given)
  type: boolean?
  inputBinding:
    prefix: -size
- id: in_genome
  doc: (genome for extracting sequence)
  type: Directory?
  inputBinding:
    prefix: -genome
- id: in_mask
  doc: (use repeat masked sequence)
  type: boolean?
  inputBinding:
    prefix: -mask
- id: in_peak_file
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
- removeRedundantPeaks.pl
