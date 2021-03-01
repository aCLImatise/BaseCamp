class: CommandLineTool
id: scg_run_doublet_model.cwl
inputs:
- id: in_config_file
  doc: Path to YAML format configuration file.
  type: File?
  inputBinding:
    prefix: --config_file
- id: in_lower_bound_file
  doc: Path of file where lower bound will be written.
  type: File?
  inputBinding:
    prefix: --lower_bound_file
- id: in_out_dir
  doc: Path where output files will be written.
  type: File?
  inputBinding:
    prefix: --out_dir
- id: in_convergence_tolerance
  doc: "Set random seed so results can be reproduced. By\ndefault a random seed is\
    \ chosen."
  type: string?
  inputBinding:
    prefix: --convergence_tolerance
- id: in_labels_file
  doc: Path of file with initial labels to use.
  type: File?
  inputBinding:
    prefix: --labels_file
- id: in_use_position_specific_error_rate
  doc: If an error rate will be estimated for each position.
  type: boolean?
  inputBinding:
    prefix: --use_position_specific_error_rate
- id: in_samples_file
  doc: "Path mapping cells to samples. If set each sample will\nhave a separate mixing\
    \ proportion."
  type: File?
  inputBinding:
    prefix: --samples_file
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cell
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_genotype_r
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_run_doublet_model
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Path where output files will be written.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- scg
- run_doublet_model
