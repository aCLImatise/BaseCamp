class: CommandLineTool
id: ../../../bp_chaos_plot.pl.cwl
inputs:
- id: in_g_slash_graphics
  doc: TYPE
  type: File
  inputBinding:
    prefix: -g/--graphics
- id: in_h_slash_height
  doc: ''
  type: long
  inputBinding:
    prefix: -h/--height
- id: in_f_slash_format
  doc: ''
  type: string
  inputBinding:
    prefix: -f/--format
- id: in_i_slash_input
  doc: ''
  type: File
  inputBinding:
    prefix: -i/--input
- id: in_chaos_plot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_g_slash_graphics
  doc: TYPE
  type: File
  outputBinding:
    glob: $(inputs.in_g_slash_graphics)
cwlVersion: v1.1
baseCommand:
- bp_chaos_plot.pl
