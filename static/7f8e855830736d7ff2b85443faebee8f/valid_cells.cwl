class: CommandLineTool
id: valid_cells.cwl
inputs:
- id: in_verbose
  doc: Verbose execution.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_sample_name
  doc: Sample name
  type: string
  inputBinding:
    position: 0
- id: in_results_dot_txt
  doc: Path to stats file
  type: string
  inputBinding:
    position: 1
- id: in_seg_copy
  doc: Path to cnvs file
  type: string
  inputBinding:
    position: 2
- id: in_interval_slash_value
  doc: "Interval of values (p1-p2) or single values (p) to be\nfiltered out. At least\
    \ one interval/value must be specified.\nIntervals must be compliant to the following\
    \ format: p1-p2.\nValues must be compliant to the following format: p."
  type: string
  inputBinding:
    position: 3
- id: in_out_dir
  doc: Path to the output directory
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- valid_cells
