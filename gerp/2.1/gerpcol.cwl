class: CommandLineTool
id: ../../../gerpcol.cwl
inputs:
- id: verbose_mode
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: evolutionary_tree
  doc: evolutionary tree
  type: string
  inputBinding:
    prefix: -t
- id: alignment_filename
  doc: alignment filename
  type: File
  inputBinding:
    prefix: -f
- id: alignment_mfa_format
  doc: alignment in mfa format [default = false]
  type: boolean
  inputBinding:
    prefix: -a
- id: name_reference_sequence
  doc: name of reference sequence
  type: string
  inputBinding:
    prefix: -e
- id: project_reference_sequence
  doc: project out reference sequence
  type: boolean
  inputBinding:
    prefix: -j
- id: trtv_ratio
  doc: Tr/Tv ratio [default = 2.0]
  type: string
  inputBinding:
    prefix: -r
- id: tolerance_rate_estimation
  doc: tolerance for rate estimation [default = 0.001]
  type: string
  inputBinding:
    prefix: -p
- id: start_at_position
  doc: start at position 0 [default = false]
  type: string
  inputBinding:
    prefix: -z
- id: tree_neutral_rate
  doc: tree neutral rate [default = compute from tree]
  type: string
  inputBinding:
    prefix: -n
- id: tree_scaling_factor
  doc: tree scaling factor [default = 1.0]
  type: string
  inputBinding:
    prefix: -s
- id: suffix_naming_files
  doc: suffix for naming output files [default = ".rates"]
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- gerpcol
