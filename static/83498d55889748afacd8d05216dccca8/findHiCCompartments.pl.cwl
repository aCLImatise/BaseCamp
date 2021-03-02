class: CommandLineTool
id: findHiCCompartments.pl.cwl
inputs:
- id: in_opp
  doc: (return inactive, not active regions)
  type: boolean?
  inputBinding:
    prefix: -opp
- id: in_thresh
  doc: '<#> (threshold for active regions, default: 0)'
  type: boolean?
  inputBinding:
    prefix: -thresh
- id: in_bg
  doc: (for differential domains)
  type: File?
  inputBinding:
    prefix: -bg
- id: in_diff
  doc: '<#> (difference threshold, default: 0.5)'
  type: boolean?
  inputBinding:
    prefix: -diff
- id: in_corr
  doc: (for differential domains)
  type: File?
  inputBinding:
    prefix: -corr
- id: in_corr_diff
  doc: '<#> (correlation threshold, default: 0.4)'
  type: boolean?
  inputBinding:
    prefix: -corrDiff
- id: in_min
  doc: '<#> (minimum size of domains, default: 100000)'
  type: boolean?
  inputBinding:
    prefix: -min
- id: in_pc_one_dot_txt_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- findHiCCompartments.pl
