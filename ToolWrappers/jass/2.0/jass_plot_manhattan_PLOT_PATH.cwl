class: CommandLineTool
id: jass_plot_manhattan_PLOT_PATH.cwl
inputs:
- id: in_plot_path
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --plot-path
- id: in_work_table_path
  doc: ''
  type: File?
  inputBinding:
    prefix: --worktable-path
- id: in_jass
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_plot_manhattan
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jass
- plot-manhattan
- PLOT_PATH
