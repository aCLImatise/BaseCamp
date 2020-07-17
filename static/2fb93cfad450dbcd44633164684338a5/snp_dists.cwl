class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/snp_dists.cwl
inputs:
- id: print_version_exit
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: quiet_mode_print
  doc: Quiet mode; do not print progress information
  type: boolean
  inputBinding:
    prefix: -q
- id: count_differences_just
  doc: Count all differences not just [AGTC]
  type: boolean
  inputBinding:
    prefix: -a
- id: keep_case_uppercase
  doc: Keep case, don't uppercase all letters
  type: boolean
  inputBinding:
    prefix: -k
- id: output_molten_tsv
  doc: Output MOLTEN instead of TSV
  type: boolean
  inputBinding:
    prefix: -m
- id: use_comma_tab
  doc: Use comma instead of tab in output
  type: boolean
  inputBinding:
    prefix: -c
- id: blank_top_left
  doc: Blank top left corner cell
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- snp-dists
