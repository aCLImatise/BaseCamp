class: CommandLineTool
id: qp3Pop.cwl
inputs:
- id: f
  doc: '... use <nam> as snp details name.'
  type: string
  inputBinding:
    prefix: -f
- id: p
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: s
  doc: '... use <val> as base value.'
  type: string
  inputBinding:
    prefix: -s
- id: v
  doc: '... print version and exit.'
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: '... toggle verbose mode ON.'
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- qp3Pop
