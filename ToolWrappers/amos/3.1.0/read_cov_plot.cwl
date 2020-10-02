class: CommandLineTool
id: read_cov_plot.cwl
inputs:
- id: in_scafold_coordinates_instead
  doc: scafold coordinates instead of contig coordinates
  type: string
  inputBinding:
    prefix: -S
- id: in_only_print_line
  doc: Only print every n-th line
  type: string
  inputBinding:
    prefix: -n
- id: in_bank
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- read-cov-plot
