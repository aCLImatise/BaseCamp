class: CommandLineTool
id: gvcf2coverage.cwl
inputs:
- id: in_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gvcf2coverage
