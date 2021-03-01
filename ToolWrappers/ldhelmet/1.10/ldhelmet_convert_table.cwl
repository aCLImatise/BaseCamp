class: CommandLineTool
id: ldhelmet_convert_table.cwl
inputs:
- id: in__display_version
  doc: '[ --version ]       Display version.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_table
  doc: LDhat style table to be converted.
  type: string?
  inputBinding:
    prefix: --input_table
- id: in_output_table
  doc: Name for output file.
  type: File?
  inputBinding:
    prefix: --output_table
- id: in_config_file
  doc: "(Optional) File with configs.  This is only necessary\nif you have missing\
    \ data.\n"
  type: File?
  inputBinding:
    prefix: --config_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_table
  doc: Name for output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_table)
hints: []
cwlVersion: v1.1
baseCommand:
- ldhelmet
- convert_table
