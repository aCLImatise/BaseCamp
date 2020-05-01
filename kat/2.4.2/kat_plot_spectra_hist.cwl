#!/usr/bin/env cwl-runner

baseCommand:
- kat_plot_spectra_hist
class: CommandLineTool
cwlVersion: v1.0
id: kat_plot_spectra_hist
inputs:
- doc: The input histogram file from KAT
  id: histo_files
  inputBinding:
    position: 0
  type: string
- doc: The path to the output file.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The plot file type to create (default is based on given output name).
  id: output_type
  inputBinding:
    prefix: --output_type
  type: string
- doc: Title for plot
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: Label for x-axis
  id: x_label
  inputBinding:
    prefix: --x_label
  type: string
- doc: Label for y-axis
  id: y_label
  inputBinding:
    prefix: --y_label
  type: string
- doc: Comma separated list of labels for legend
  id: legend_labels
  inputBinding:
    prefix: --legend_labels
  type: string
- doc: Minimum value for x-axis
  id: x_min
  inputBinding:
    prefix: --x_min
  type: string
- doc: Minimum value for y-axis
  id: y_min
  inputBinding:
    prefix: --y_min
  type: string
- doc: Maximum value for x-axis
  id: x_max
  inputBinding:
    prefix: --x_max
  type: string
- doc: Maximum value for y-axis
  id: y_max
  inputBinding:
    prefix: --y_max
  type: string
- doc: Width of canvas
  id: width
  inputBinding:
    prefix: --width
  type: string
- doc: Height of canvas
  id: height
  inputBinding:
    prefix: --height
  type: string
- doc: X-axis is logscale. Overrides x_min and x_max
  id: x_log_scale
  inputBinding:
    prefix: --x_logscale
  type: boolean
- doc: Y-axis is logscale. Overrides y_min and y_max
  id: y_log_scale
  inputBinding:
    prefix: --y_logscale
  type: boolean
- doc: Resolution in dots per inch of output graphic.
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
- doc: Print extra information
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
