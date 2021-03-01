class: CommandLineTool
id: watchmedo_options..cwl
inputs:
- id: in_watch_me_do
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- watchmedo
- options.
