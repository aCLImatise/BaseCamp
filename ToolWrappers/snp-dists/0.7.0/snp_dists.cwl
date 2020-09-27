class: CommandLineTool
id: snp_dists.cwl
inputs:
- id: in_print_version_exit
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: in_quiet_mode_print
  doc: Quiet mode; do not print progress information
  type: boolean
  inputBinding:
    prefix: -q
- id: in_count_differences_just
  doc: Count all differences not just [AGTC]
  type: boolean
  inputBinding:
    prefix: -a
- id: in_keep_case_uppercase
  doc: Keep case, don't uppercase all letters
  type: boolean
  inputBinding:
    prefix: -k
- id: in_output_molten_instead
  doc: Output MOLTEN instead of TSV
  type: boolean
  inputBinding:
    prefix: -m
- id: in_use_comma_instead
  doc: Use comma instead of tab in output
  type: boolean
  inputBinding:
    prefix: -c
- id: in_blank_top_left
  doc: Blank top left corner cell
  type: boolean
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snp-dists
