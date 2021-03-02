class: CommandLineTool
id: cgmlst_dists.cwl
inputs:
- id: in_print_version_exit
  doc: Print version and exit
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_quiet_mode_print
  doc: Quiet mode; do not print progress information
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_use_comma_tab
  doc: Use comma instead of tab in output
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_output_lowertri_uppertri
  doc: 'Output: 1=lower-tri 2=upper-tri 3=full [3]'
  type: long?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cgmlst-dists
