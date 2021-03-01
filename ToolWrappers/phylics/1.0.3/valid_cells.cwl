class: CommandLineTool
id: valid_cells.cwl
inputs:
- id: in_verbose
  doc: Verbose execution.
  type: boolean?
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
- id: in_p_one_p_two_dot
  doc: 'Values must be compliant to the following format: p.'
  type: long
  inputBinding:
    position: 0
- id: in_out_dir
  doc: Path to the output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- valid_cells
