class: CommandLineTool
id: qpBound.cwl
inputs:
- id: f
  doc: '... use <nam> as snp details name.'
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: '... use <val> as base value.'
  type: string
  inputBinding:
    prefix: -b
- id: p
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: g
  doc: <>       ... Print this message and exit.
  type: boolean
  inputBinding:
    prefix: -g
- id: s
  doc: '... use <val> as seed value.'
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: '... give <nam> to produced out graph.'
  type: string
  inputBinding:
    prefix: -o
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
- id: x
  doc: '... toggle analysis  mode ON.'
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- qpBound
