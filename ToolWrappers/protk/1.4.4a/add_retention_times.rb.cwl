class: CommandLineTool
id: add_retention_times.rb.cwl
inputs:
- id: in_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File
  inputBinding:
    prefix: --replace-output
- id: in_output
  doc: An explicitly named output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_file_one_dot_pep_dot_xml
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_file_two_do_tmgf
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_replace_output
  doc: Dont skip analyses for which the output file already exists [false]
  type: File
  outputBinding:
    glob: $(inputs.in_replace_output)
- id: out_output
  doc: An explicitly named output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- add_retention_times.rb
