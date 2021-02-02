class: CommandLineTool
id: tandem_to_pepxml.rb.cwl
inputs:
- id: in_output_prefix
  doc: A string to prepend to the name of output files
  type: string
  inputBinding:
    prefix: --output-prefix
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
- id: in_file_two_dot_dat
  doc: ''
  type: long
  inputBinding:
    position: 0
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
- tandem_to_pepxml.rb
