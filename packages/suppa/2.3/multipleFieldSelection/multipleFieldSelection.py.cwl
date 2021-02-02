class: CommandLineTool
id: multipleFieldSelection.py.cwl
inputs:
- id: in_input_files
  doc: spaced separated list of files to join.
  type: string[]
  inputBinding:
    prefix: --input-files
- id: in_key_field
  doc: common field among the input files.
  type: string
  inputBinding:
    prefix: --key-field
- id: in_fields
  doc: spaced separated list of fields to select.(starting in 1)
  type: string[]
  inputBinding:
    prefix: --fields
- id: in_separator
  doc: field separator
  type: string
  inputBinding:
    prefix: --separator
- id: in_output_file
  doc: name of the output file.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_no_header
  doc: use it if the file has no header.
  type: boolean
  inputBinding:
    prefix: --no-header
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: name of the output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- multipleFieldSelection.py
