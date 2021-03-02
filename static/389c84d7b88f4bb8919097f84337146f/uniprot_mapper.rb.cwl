class: CommandLineTool
id: uniprot_mapper.rb.cwl
inputs:
- id: in_output
  doc: An explicitly named output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_id_column
  doc: Specify a column for ids (default is column 1)
  type: long?
  inputBinding:
    prefix: --id-column
- id: in_to_id
  doc: Specify an ID to output. Can be used multiple times.
  type: string?
  inputBinding:
    prefix: --to-id
- id: in_input_file_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_from_id_type
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An explicitly named output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- uniprot_mapper.rb
