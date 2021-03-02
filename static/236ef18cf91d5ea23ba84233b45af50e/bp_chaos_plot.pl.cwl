class: CommandLineTool
id: bp_chaos_plot.pl.cwl
inputs:
- id: in_graphics
  doc: TYPE
  type: File?
  inputBinding:
    prefix: --graphics
- id: in_i
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_chaos_plot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_graphics
  doc: TYPE
  type: File?
  outputBinding:
    glob: $(inputs.in_graphics)
hints: []
cwlVersion: v1.1
baseCommand:
- bp_chaos_plot.pl
