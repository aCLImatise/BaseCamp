class: CommandLineTool
id: plot_insert_size_distribution.cwl
inputs:
- id: distribution_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: 'Name of output file (default: <data-file>.pdf).'
  type: string
  inputBinding:
    prefix: -o
- id: q
  doc: Choose x-range such that at most the given mass is invisible in each tail (default=1e-4).
  type: string
  inputBinding:
    prefix: -q
- id: n
  doc: Additionally plot normal distribution with given mean and stddev (comma separated).
  type: string
  inputBinding:
    prefix: -n
- id: x_range
  doc: Instead of using quantiles, use the given xrange (comma separated).
  type: string
  inputBinding:
    prefix: --xrange
- id: y_range
  doc: 'Y-range to be used (default: auto).'
  type: string
  inputBinding:
    prefix: --yrange
outputs: []
cwlVersion: v1.1
baseCommand:
- plot-insert-size-distribution
