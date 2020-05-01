#!/usr/bin/env cwl-runner

baseCommand:
- kat_plot_spectra_mx
class: CommandLineTool
cwlVersion: v1.0
id: kat_plot_spectra_mx
inputs:
- doc: The input matrix file from KAT
  id: matrix_file
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
- doc: Activate intersection mode, which plots the shared and exclusive content found
    in the matrix.
  id: intersection
  inputBinding:
    prefix: --intersection
  type: boolean
- doc: The list of columns or rows to select from the matrix (overrides -i)
  id: list
  inputBinding:
    prefix: --list
  type: string
- doc: If in intersection mode, the level at which content for dataset 1 is considered
    exclusive or shared
  id: exc_cut_off_d1
  inputBinding:
    prefix: --exc_cutoff_d1
  type: string
- doc: If in intersection mode, the level at which content for dataset 2 is considered
    exclusive or shared
  id: exc_cut_off_d2
  inputBinding:
    prefix: --exc_cutoff_d2
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
