class: CommandLineTool
id: binlinks.cwl
inputs:
- id: in_output_style
  doc: '|1|2'
  type: long?
  inputBinding:
    prefix: -output_style
- id: in_bin_size
  doc: ''
  type: string?
  inputBinding:
    prefix: -bin_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- binlinks
