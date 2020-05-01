#!/usr/bin/env cwl-runner

baseCommand:
- kat_plot_spectra_cn
class: CommandLineTool
cwlVersion: v1.0
id: kat_plot_spectra_cn
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
- doc: Display K-mers that appear less than n times in the genome
  id: min_assembly_frequency
  inputBinding:
    prefix: --min_assembly_frequency
  type: long
- doc: Maximum duplication level to show in plots
  id: max_dup
  inputBinding:
    prefix: --max_dup
  type: long
- doc: Comma separated string listing coverage levels to show in plot (overrides -i
    and -u)
  id: coverage_list
  inputBinding:
    prefix: --coverage_list
  type: string
- doc: Do not combine remaining copy numbers in matrix
  id: no_cumulative
  inputBinding:
    prefix: --no_cumulative
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
