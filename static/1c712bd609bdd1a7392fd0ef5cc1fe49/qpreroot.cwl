class: CommandLineTool
id: qpreroot.cwl
inputs:
- id: p
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: r
  doc: '... use <nam> as root name.'
  type: string
  inputBinding:
    prefix: -r
- id: g
  doc: '... use <nam> as graph name.'
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: '... use <nam> as out graph name.'
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: '... use <nam> as dot graph name.'
  type: string
  inputBinding:
    prefix: -d
- id: s
  doc: '... use <nam> as script name.'
  type: string
  inputBinding:
    prefix: -s
- id: x
  doc: '... delete population <nam>.'
  type: string
  inputBinding:
    prefix: -x
- id: h
  doc: '... toggle hash calculation ON.'
  type: boolean
  inputBinding:
    prefix: -H
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
- id: f
  doc: '... new output format (edge not ledge etc.'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- qpreroot
