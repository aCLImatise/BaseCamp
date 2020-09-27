class: CommandLineTool
id: plot_insert_size_distribution.cwl
inputs:
- id: in_name_output_file
  doc: 'Name of output file (default: <data-file>.pdf).'
  type: File
  inputBinding:
    prefix: -o
- id: in_choose_xrange_such
  doc: "Choose x-range such that at most the given mass is\ninvisible in each tail\
    \ (default=1e-4)."
  type: double
  inputBinding:
    prefix: -q
- id: in_additionally_plot_distribution
  doc: "Additionally plot normal distribution with given mean and\nstddev (comma separated)."
  type: string
  inputBinding:
    prefix: -n
- id: in_x_range
  doc: "Instead of using quantiles, use the given xrange (comma\nseparated)."
  type: string
  inputBinding:
    prefix: --xrange
- id: in_y_range
  doc: 'Y-range to be used (default: auto).'
  type: string
  inputBinding:
    prefix: --yrange
- id: in_distribution_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: 'Name of output file (default: <data-file>.pdf).'
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_file)
cwlVersion: v1.1
baseCommand:
- plot-insert-size-distribution
