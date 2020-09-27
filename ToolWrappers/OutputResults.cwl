class: CommandLineTool
id: OutputResults.cwl
inputs:
- id: in_version
  doc: ''
  type: string
  inputBinding:
    prefix: -version
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: in_output_text
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_an_k
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- OutputResults
