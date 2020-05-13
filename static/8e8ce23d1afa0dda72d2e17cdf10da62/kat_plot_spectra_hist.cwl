class: CommandLineTool
id: kat_plot_spectra_hist.cwl
inputs:
- id: histo_files
  doc: The input histogram file from KAT
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The path to the output file.
  type: string
  inputBinding:
    prefix: --output
- id: output_type
  doc: The plot file type to create (default is based on given output name).
  type: string
  inputBinding:
    prefix: --output_type
- id: title
  doc: Title for plot
  type: string
  inputBinding:
    prefix: --title
- id: x_label
  doc: Label for x-axis
  type: string
  inputBinding:
    prefix: --x_label
- id: y_label
  doc: Label for y-axis
  type: string
  inputBinding:
    prefix: --y_label
- id: legend_labels
  doc: Comma separated list of labels for legend
  type: string
  inputBinding:
    prefix: --legend_labels
- id: x_min
  doc: Minimum value for x-axis
  type: string
  inputBinding:
    prefix: --x_min
- id: y_min
  doc: Minimum value for y-axis
  type: string
  inputBinding:
    prefix: --y_min
- id: x_max
  doc: Maximum value for x-axis
  type: string
  inputBinding:
    prefix: --x_max
- id: y_max
  doc: Maximum value for y-axis
  type: string
  inputBinding:
    prefix: --y_max
- id: width
  doc: Width of canvas
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: Height of canvas
  type: string
  inputBinding:
    prefix: --height
- id: x_log_scale
  doc: X-axis is logscale. Overrides x_min and x_max
  type: boolean
  inputBinding:
    prefix: --x_logscale
- id: y_log_scale
  doc: Y-axis is logscale. Overrides y_min and y_max
  type: boolean
  inputBinding:
    prefix: --y_logscale
- id: dpi
  doc: Resolution in dots per inch of output graphic.
  type: string
  inputBinding:
    prefix: --dpi
- id: verbose
  doc: Print extra information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- kat_plot_spectra_hist
