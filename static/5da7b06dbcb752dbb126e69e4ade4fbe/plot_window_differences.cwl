class: CommandLineTool
id: plot_window_differences.cwl
inputs:
- id: in_before
  doc: Full path to dataframe 1 (will be treated) as 'before'
  type: File?
  inputBinding:
    prefix: --before
- id: in_chrom
  doc: Chromosome to analyze. Must match name in dataframes.
  type: string?
  inputBinding:
    prefix: --chrom
- id: in_sample_id
  doc: Sample ID or other identifier to be used in naming
  type: string?
  inputBinding:
    prefix: --sample_id
- id: in_output_prefix
  doc: Full path to and prefix of desired output plot
  type: File?
  inputBinding:
    prefix: --output_prefix
- id: in_marker_size
  doc: Marker size in matplotlib. Default is 10.
  type: long?
  inputBinding:
    prefix: --marker_size
- id: in_marker_transparency
  doc: "Transparency of markers. Alpha in matplotlib. Default\nis 0.5"
  type: double?
  inputBinding:
    prefix: --marker_transparency
- id: in_coordinate_scale
  doc: "Divide all coordinates by this value.Default is\n1000000, which will plot\
    \ everything in megabases."
  type: long?
  inputBinding:
    prefix: --coordinate_scale
- id: in_y_min
  doc: "If 'auto', will allow matplotlib to automatically\ndetermine limit. Otherwise,\
    \ will set the y axis\nminimum to the value provided (int or float)"
  type: double?
  inputBinding:
    prefix: --y_min
- id: in_y_max
  doc: "If 'auto', will allow matplotlib to automatically\ndetermine limit. Otherwise,\
    \ will set the y axis\nmaximum to the value provided (int or float)"
  type: double?
  inputBinding:
    prefix: --y_max
- id: in_x_limit
  doc: "Max value on x axis. We recommend you use the\nchromosome length."
  type: long?
  inputBinding:
    prefix: --x_limit
- id: in_log_transform_depth
  doc: "Include flag to plot the absolute value of the log of\nthe depth difference\
    \ *IN THE DIRECTION OF THE\nDIFFERENCE*. For exampe, if the difference is 2, this\n\
    would plot that value as abs(log10(2)), while if the\ndifference is -2, this would\
    \ plot that value as\n-abs(log10(2)). This allows the sign of the difference\n\
    to remain intact, while controlling for taking the log\nof negative numbers or\
    \ values between 0 and 1.\n"
  type: boolean?
  inputBinding:
    prefix: --log_transform_depth
- id: in_after
  doc: ''
  type: string?
  inputBinding:
    prefix: --after
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix
  doc: Full path to and prefix of desired output plot
  type: File?
  outputBinding:
    glob: $(inputs.in_output_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- plot_window_differences
