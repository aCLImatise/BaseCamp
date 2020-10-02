class: CommandLineTool
id: tgTigDisplay.cwl
inputs:
- id: in_t
  doc: ''
  type: File
  inputBinding:
    prefix: -t
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -S
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tgTigDisplay
