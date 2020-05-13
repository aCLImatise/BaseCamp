class: CommandLineTool
id: qpGraph.cwl
inputs:
- id: z
  doc: '... use <val> as Z threshold.'
  type: string
  inputBinding:
    prefix: -z
- id: s
  doc: '... use <val> seed.'
  type: string
  inputBinding:
    prefix: -s
- id: p
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: g
  doc: '... use <nam> as graph name.'
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: '... use <nam> au out graph.'
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: '... use <nam> for graph dot name.'
  type: string
  inputBinding:
    prefix: -d
- id: x
  doc: '... use <nam> as oulier name.'
  type: string
  inputBinding:
    prefix: -x
- id: l
  doc: '... use <val> as lambda scale value.'
  type: string
  inputBinding:
    prefix: -l
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
- qpGraph
