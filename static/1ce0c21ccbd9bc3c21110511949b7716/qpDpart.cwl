class: CommandLineTool
id: qpDpart.cwl
inputs:
- id: l
  doc: '... use <val> as low count value.'
  type: string
  inputBinding:
    prefix: -L
- id: h
  doc: '... use <val> sa high count value.'
  type: string
  inputBinding:
    prefix: -H
- id: p
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
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
- qpDpart
