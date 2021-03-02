class: CommandLineTool
id: gerpcol.cwl
inputs:
- id: in_verbose_mode
  doc: verbose mode
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_evolutionary_tree
  doc: evolutionary tree
  type: File?
  inputBinding:
    prefix: -t
- id: in_alignment_filename
  doc: alignment filename
  type: File?
  inputBinding:
    prefix: -f
- id: in_alignment_mfa_format
  doc: alignment in mfa format [default = false]
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_name_reference_sequence
  doc: name of reference sequence
  type: string?
  inputBinding:
    prefix: -e
- id: in_project_reference_sequence
  doc: project out reference sequence
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_trtv_ratio
  doc: Tr/Tv ratio [default = 2.0]
  type: double?
  inputBinding:
    prefix: -r
- id: in_tolerance_rate_estimation
  doc: tolerance for rate estimation [default = 0.001]
  type: double?
  inputBinding:
    prefix: -p
- id: in_start_at_position
  doc: start at position 0 [default = false]
  type: long?
  inputBinding:
    prefix: -z
- id: in_tree_neutral_rate
  doc: tree neutral rate [default = compute from tree]
  type: string?
  inputBinding:
    prefix: -n
- id: in_tree_scaling_factor
  doc: tree scaling factor [default = 1.0]
  type: double?
  inputBinding:
    prefix: -s
- id: in_suffix_naming_files
  doc: suffix for naming output files [default = ".rates"]
  type: string?
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gerpcol
