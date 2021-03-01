class: CommandLineTool
id: scg_run_dirichlet_mixture_model.cwl
inputs:
- id: in_path_yaml_format
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
  doc: "Path of file with initial labels to use.\n"
  type: File?
  inputBinding:
    prefix: --labels_file
- id: in_var_5
  doc: '[--lower_bound_file LOWER_BOUND_FILE]'
  type: string
  inputBinding:
    position: 0
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
- run_dirichlet_mixture_model
