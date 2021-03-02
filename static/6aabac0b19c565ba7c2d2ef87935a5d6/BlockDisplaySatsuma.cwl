class: CommandLineTool
id: BlockDisplaySatsuma.cwl
inputs:
- id: in_string_summary_file
  doc: '<string> : satsuma summary file'
  type: boolean?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- BlockDisplaySatsuma
