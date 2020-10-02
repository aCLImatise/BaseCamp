class: CommandLineTool
id: pal_finder.cwl
inputs:
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pal_finder_v_zero_dot_zero_two_dot_zero_four_do_tpl
  doc: ''
  type: double
  inputBinding:
    position: 1
- id: in_config_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pal_finder
