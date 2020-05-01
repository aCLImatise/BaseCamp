#!/usr/bin/env cwl-runner

baseCommand:
- kat_plot_cold
class: CommandLineTool
cwlVersion: v1.0
id: kat_plot_cold
inputs:
- doc: The stats file produced by 'kat cold'
  id: stats_file
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
