class: CommandLineTool
id: kat_plot_spectra_cn.cwl
inputs:
- id: matrix_file
  doc: The input matrix file from KAT
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
- id: min_assembly_frequency
  doc: Display K-mers that appear less than n times in the genome
  type: long
  inputBinding:
    prefix: --min_assembly_frequency
- id: max_dup
  doc: Maximum duplication level to show in plots
  type: long
  inputBinding:
    prefix: --max_dup
- id: coverage_list
  doc: Comma separated string listing coverage levels to show in plot (overrides -i
    and -u)
  type: string
  inputBinding:
    prefix: --coverage_list
- id: no_cumulative
  doc: Do not combine remaining copy numbers in matrix
  type: boolean
  inputBinding:
    prefix: --no_cumulative
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
- kat_plot_spectra_cn
