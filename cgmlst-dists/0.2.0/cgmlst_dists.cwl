class: CommandLineTool
id: ../../../cgmlst_dists.cwl
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
- id: use_comma_tab
  doc: Use comma instead of tab in output
  type: boolean
  inputBinding:
    prefix: -c
- id: output_uppertri_full
  doc: 'Output: 1=lower-tri 2=upper-tri 3=full [3]'
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- cgmlst-dists
