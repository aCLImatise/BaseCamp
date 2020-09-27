class: CommandLineTool
id: metaSNV_post.py.cwl
inputs:
- id: in_coverage_breadth_minimal
  doc: "Coverage breadth: minimal horizontal genome coverage percentage\nper sample\
    \ per species (default: 40.0)"
  type: double
  inputBinding:
    prefix: -b
- id: in_coverage_depth_minimal
  doc: "Coverage depth: minimal average vertical genome coverage per\nsample per species\
    \ (default: 5.0)"
  type: double
  inputBinding:
    prefix: -d
- id: in_minimum_number_samples
  doc: 'Minimum number of samples per species (default: 2)'
  type: long
  inputBinding:
    prefix: -m
- id: in_filtering_step_ii_minimum
  doc: "FILTERING STEP II: minimum coverage per position per sample per\nspecies (default:\
    \ 5.0)"
  type: double
  inputBinding:
    prefix: -c
- id: in_filtering_step_ii_required
  doc: "FILTERING STEP II: required proportion of informative samples\n(coverage non-zero)\
    \ per position (default: 0.5)"
  type: double
  inputBinding:
    prefix: -p
- id: in_div
  doc: 'Compute diversity measures (default: False)'
  type: boolean
  inputBinding:
    prefix: -div
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- metaSNV_post.py
