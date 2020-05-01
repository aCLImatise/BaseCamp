#!/usr/bin/env cwl-runner

baseCommand:
- kat_plot_profile
class: CommandLineTool
cwlVersion: v1.0
id: kat_plot_profile
inputs:
- doc: The input profile file from KAT sect
  id: sect_profile_file
  inputBinding:
    position: 0
  type: string
- doc: The optional second input profile file from KAT sect
  id: sect_profile_file_2
  inputBinding:
    position: 1
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
- doc: Label for second y-axis
  id: y2_label
  inputBinding:
    prefix: --y2_label
  type: string
- doc: Maximum value for x-axis
  id: x_max
  inputBinding:
    prefix: --x_max
  type: string
- doc: Minimum value for x-axis
  id: x_min
  inputBinding:
    prefix: --x_min
  type: string
- doc: Maximum value for y-axis
  id: y_max
  inputBinding:
    prefix: --y_max
  type: string
- doc: Minimum value for y-axis
  id: y_min
  inputBinding:
    prefix: --y_min
  type: string
- doc: Maximum value for second y-axis
  id: y2_max
  inputBinding:
    prefix: --y2_max
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
- doc: Comma separate list of indexes of fasta entry to plot
  id: index
  inputBinding:
    prefix: --index
  type: string
- doc: Name of fasta entry to plot (has priority over index)
  id: header
  inputBinding:
    prefix: --header
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
