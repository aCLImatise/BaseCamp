class: CommandLineTool
id: BlockDisplaySatsuma.cwl
inputs:
- id: in_string_satsuma_file
  doc: '<string> : satsuma summary file'
  type: boolean
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- BlockDisplaySatsuma
