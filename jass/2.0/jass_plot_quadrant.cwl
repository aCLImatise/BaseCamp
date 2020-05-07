class: CommandLineTool
id: jass_plot_quadrant.cwl
inputs:
- id: work_table_path
  doc: path to the worktable file containing the data
  type: string
  inputBinding:
    prefix: --worktable-path
- id: plot_path
  doc: path to the quadrant plot file to generate
  type: string
  inputBinding:
    prefix: --plot-path
- id: significance_treshold
  doc: threshold at which a p-value is considered significant
  type: string
  inputBinding:
    prefix: --significance-treshold
outputs: []
cwlVersion: v1.1
baseCommand:
- jass
- plot-quadrant
