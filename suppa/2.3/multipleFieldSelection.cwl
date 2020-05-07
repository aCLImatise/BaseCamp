class: CommandLineTool
id: multipleFieldSelection.py.cwl
inputs:
- id: input_files
  doc: spaced separated list of files to join.
  type: string[]
  inputBinding:
    prefix: --input-files
- id: key_field
  doc: common field among the input files.
  type: string
  inputBinding:
    prefix: --key-field
- id: fields
  doc: spaced separated list of fields to select.(starting in 1)
  type: string[]
  inputBinding:
    prefix: --fields
- id: separator
  doc: field separator
  type: string
  inputBinding:
    prefix: --separator
- id: output_file
  doc: name of the output file.
  type: string
  inputBinding:
    prefix: --output-file
- id: no_header
  doc: use it if the file has no header.
  type: boolean
  inputBinding:
    prefix: --no-header
outputs: []
cwlVersion: v1.1
baseCommand:
- multipleFieldSelection.py
