class: CommandLineTool
id: qpff3base.cwl
inputs:
- id: f
  doc: '... use <nam> sa fixname.'
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: '... use <va> as base value.'
  type: string
  inputBinding:
    prefix: -b
- id: p
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: g
  doc: <>   ... .
  type: boolean
  inputBinding:
    prefix: -g
- id: s
  doc: '... use <val> as seed.'
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: <>   ... .
  type: boolean
  inputBinding:
    prefix: -o
- id: l
  doc: '... use <val> as lambda scale.'
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
- id: x
  doc: '... toggle doAnalysis ON.'
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- qpff3base
