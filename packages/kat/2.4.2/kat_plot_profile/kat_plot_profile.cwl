class: CommandLineTool
id: kat_plot_profile.cwl
inputs:
- id: in_output
  doc: The path to the output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: "The plot file type to create (default is based on\ngiven output name)."
  type: File
  inputBinding:
    prefix: --output_type
- id: in_title
  doc: Title for plot
  type: string
  inputBinding:
    prefix: --title
- id: in_x_label
  doc: Label for x-axis
  type: string
  inputBinding:
    prefix: --x_label
- id: in_y_label
  doc: Label for y-axis
  type: string
  inputBinding:
    prefix: --y_label
- id: in_y_two_label
  doc: Label for second y-axis
  type: long
  inputBinding:
    prefix: --y2_label
- id: in_x_max
  doc: Maximum value for x-axis
  type: string
  inputBinding:
    prefix: --x_max
- id: in_x_min
  doc: Minimum value for x-axis
  type: string
  inputBinding:
    prefix: --x_min
- id: in_y_max
  doc: Maximum value for y-axis
  type: string
  inputBinding:
    prefix: --y_max
- id: in_y_min
  doc: Minimum value for y-axis
  type: string
  inputBinding:
    prefix: --y_min
- id: in_y_two_max
  doc: Maximum value for second y-axis
  type: long
  inputBinding:
    prefix: --y2_max
- id: in_width
  doc: Width of canvas
  type: string
  inputBinding:
    prefix: --width
- id: in_height
  doc: Height of canvas
  type: string
  inputBinding:
    prefix: --height
- id: in_index
  doc: Comma separate list of indexes of fasta entry to plot
  type: string
  inputBinding:
    prefix: --index
- id: in_header
  doc: Name of fasta entry to plot (has priority over index)
  type: string
  inputBinding:
    prefix: --header
- id: in_dpi
  doc: Resolution in dots per inch of output graphic.
  type: string
  inputBinding:
    prefix: --dpi
- id: in_verbose
  doc: Print extra information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_sect_profile_file
  doc: The input profile file from KAT sect
  type: string
  inputBinding:
    position: 0
- id: in_sect_profile_file_two
  doc: The optional second input profile file from KAT sect
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The path to the output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_type
  doc: "The plot file type to create (default is based on\ngiven output name)."
  type: File
  outputBinding:
    glob: $(inputs.in_output_type)
cwlVersion: v1.1
baseCommand:
- kat_plot_profile
