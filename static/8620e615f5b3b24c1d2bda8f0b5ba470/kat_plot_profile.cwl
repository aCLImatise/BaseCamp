class: CommandLineTool
id: kat_plot_profile.cwl
inputs:
- id: sect_profile_file
  doc: The input profile file from KAT sect
  type: string
  inputBinding:
    position: 0
- id: sect_profile_file_2
  doc: The optional second input profile file from KAT sect
  type: string
  inputBinding:
    position: 1
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
- id: y2_label
  doc: Label for second y-axis
  type: string
  inputBinding:
    prefix: --y2_label
- id: x_max
  doc: Maximum value for x-axis
  type: string
  inputBinding:
    prefix: --x_max
- id: x_min
  doc: Minimum value for x-axis
  type: string
  inputBinding:
    prefix: --x_min
- id: y_max
  doc: Maximum value for y-axis
  type: string
  inputBinding:
    prefix: --y_max
- id: y_min
  doc: Minimum value for y-axis
  type: string
  inputBinding:
    prefix: --y_min
- id: y2_max
  doc: Maximum value for second y-axis
  type: string
  inputBinding:
    prefix: --y2_max
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
- id: index
  doc: Comma separate list of indexes of fasta entry to plot
  type: string
  inputBinding:
    prefix: --index
- id: header
  doc: Name of fasta entry to plot (has priority over index)
  type: string
  inputBinding:
    prefix: --header
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
- kat_plot_profile
