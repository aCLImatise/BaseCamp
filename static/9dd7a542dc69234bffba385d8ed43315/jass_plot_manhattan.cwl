class: CommandLineTool
id: jass_plot_manhattan.cwl
inputs:
- id: work_table_path
  doc: path to the worktable file containing the data
  type: string
  inputBinding:
    prefix: --worktable-path
- id: plot_path
  doc: path to the manhattan plot file to generate
  type: string
  inputBinding:
    prefix: --plot-path
outputs: []
cwlVersion: v1.1
baseCommand:
- jass
- plot-manhattan
