class: CommandLineTool
id: biasaway.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_sequences
  doc: '-> type: `biasaway w -h`'
  type: string
  inputBinding:
    position: 0
- id: in_bin
  doc: '-> type: `biasaway c -h`'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- biasaway
