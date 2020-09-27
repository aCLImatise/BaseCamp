class: CommandLineTool
id: h2ph.cwl
inputs:
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h2ph
