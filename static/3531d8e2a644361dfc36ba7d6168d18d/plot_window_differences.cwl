class: CommandLineTool
id: plot_window_differences.cwl
inputs:
- id: before
  doc: Full path to dataframe 1 (will be treated) as 'before' condition.
  type: string
  inputBinding:
    prefix: --before
- id: after
  doc: Full path to dataframe 2 (will be treated) as 'after' condition.
  type: string
  inputBinding:
    prefix: --after
- id: color
  doc: Color of points to use. Consult matplotlib documentation for available options.
  type: string
  inputBinding:
    prefix: --color
- id: chrom
  doc: Chromosome to analyze. Must match name in dataframes.
  type: string
  inputBinding:
    prefix: --chrom
- id: sample_id
  doc: Sample ID or other identifier to be used in naming
  type: string
  inputBinding:
    prefix: --sample_id
- id: output_prefix
  doc: Full path to and prefix of desired output plot
  type: string
  inputBinding:
    prefix: --output_prefix
- id: marker_size
  doc: Marker size in matplotlib. Default is 10.
  type: string
  inputBinding:
    prefix: --marker_size
- id: marker_transparency
  doc: Transparency of markers. Alpha in matplotlib. Default is 0.5
  type: string
  inputBinding:
    prefix: --marker_transparency
- id: coordinate_scale
  doc: Divide all coordinates by this value.Default is 1000000, which will plot everything
    in megabases.
  type: string
  inputBinding:
    prefix: --coordinate_scale
- id: y_min
  doc: If 'auto', will allow matplotlib to automatically determine limit. Otherwise,
    will set the y axis minimum to the value provided (int or float)
  type: string
  inputBinding:
    prefix: --y_min
- id: y_max
  doc: If 'auto', will allow matplotlib to automatically determine limit. Otherwise,
    will set the y axis maximum to the value provided (int or float)
  type: string
  inputBinding:
    prefix: --y_max
- id: x_limit
  doc: Max value on x axis. We recommend you use the chromosome length.
  type: string
  inputBinding:
    prefix: --x_limit
- id: log_transform_depth
  doc: Include flag to plot the absolute value of the log of the depth difference
    *IN THE DIRECTION OF THE DIFFERENCE*. For exampe, if the difference is 2, this
    would plot that value as abs(log10(2)), while if the difference is -2, this would
    plot that value as -abs(log10(2)). This allows the sign of the difference to remain
    intact, while controlling for taking the log of negative numbers or values between
    0 and 1.
  type: boolean
  inputBinding:
    prefix: --log_transform_depth
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_window_differences
