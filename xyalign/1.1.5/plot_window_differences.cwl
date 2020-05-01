#!/usr/bin/env cwl-runner

baseCommand:
- plot_window_differences
class: CommandLineTool
cwlVersion: v1.0
id: plot_window_differences
inputs:
- doc: Full path to dataframe 1 (will be treated) as 'before' condition.
  id: before
  inputBinding:
    prefix: --before
  type: string
- doc: Full path to dataframe 2 (will be treated) as 'after' condition.
  id: after
  inputBinding:
    prefix: --after
  type: string
- doc: Color of points to use. Consult matplotlib documentation for available options.
  id: color
  inputBinding:
    prefix: --color
  type: string
- doc: Chromosome to analyze. Must match name in dataframes.
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
- doc: Sample ID or other identifier to be used in naming
  id: sample_id
  inputBinding:
    prefix: --sample_id
  type: string
- doc: Full path to and prefix of desired output plot
  id: output_prefix
  inputBinding:
    prefix: --output_prefix
  type: string
- doc: Marker size in matplotlib. Default is 10.
  id: marker_size
  inputBinding:
    prefix: --marker_size
  type: string
- doc: Transparency of markers. Alpha in matplotlib. Default is 0.5
  id: marker_transparency
  inputBinding:
    prefix: --marker_transparency
  type: string
- doc: Divide all coordinates by this value.Default is 1000000, which will plot everything
    in megabases.
  id: coordinate_scale
  inputBinding:
    prefix: --coordinate_scale
  type: string
- doc: If 'auto', will allow matplotlib to automatically determine limit. Otherwise,
    will set the y axis minimum to the value provided (int or float)
  id: y_min
  inputBinding:
    prefix: --y_min
  type: string
- doc: If 'auto', will allow matplotlib to automatically determine limit. Otherwise,
    will set the y axis maximum to the value provided (int or float)
  id: y_max
  inputBinding:
    prefix: --y_max
  type: string
- doc: Max value on x axis. We recommend you use the chromosome length.
  id: x_limit
  inputBinding:
    prefix: --x_limit
  type: string
- doc: Include flag to plot the absolute value of the log of the depth difference
    *IN THE DIRECTION OF THE DIFFERENCE*. For exampe, if the difference is 2, this
    would plot that value as abs(log10(2)), while if the difference is -2, this would
    plot that value as -abs(log10(2)). This allows the sign of the difference to remain
    intact, while controlling for taking the log of negative numbers or values between
    0 and 1.
  id: log_transform_depth
  inputBinding:
    prefix: --log_transform_depth
  type: boolean
