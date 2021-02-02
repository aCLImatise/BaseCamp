class: CommandLineTool
id: surpyvor_lengthplot.cwl
inputs:
- id: in_verbose
  doc: Print out more information while running.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_plot_out
  doc: output file to write figure to
  type: File
  inputBinding:
    prefix: --plotout
- id: in_counts
  doc: "output file to write counts to\n"
  type: File
  inputBinding:
    prefix: --counts
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_plot_out
  doc: output file to write figure to
  type: File
  outputBinding:
    glob: $(inputs.in_plot_out)
- id: out_counts
  doc: "output file to write counts to\n"
  type: File
  outputBinding:
    glob: $(inputs.in_counts)
cwlVersion: v1.1
baseCommand:
- surpyvor
- lengthplot
