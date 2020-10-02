class: CommandLineTool
id: SortSatsuma.cwl
inputs:
- id: in_string_input_file
  doc: '<string> : input file'
  type: boolean
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SortSatsuma
