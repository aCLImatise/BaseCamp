class: CommandLineTool
id: ../../../jass_plot_manhattan.cwl
inputs:
- id: in_work_table_path
  doc: path to the worktable file containing the data
  type: File
  inputBinding:
    prefix: --worktable-path
- id: in_plot_path
  doc: "path to the manhattan plot file to generate\n"
  type: File
  inputBinding:
    prefix: --plot-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jass
- plot-manhattan
