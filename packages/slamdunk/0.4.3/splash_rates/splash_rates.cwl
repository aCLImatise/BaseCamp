class: CommandLineTool
id: splash_rates.cwl
inputs:
- id: in_splash
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- splash
- rates
