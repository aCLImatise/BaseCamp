class: CommandLineTool
id: ../../../vtools_report_plot_association.cwl
inputs:
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools_report
- plot_association
