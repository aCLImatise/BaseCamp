class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastadigeststats.py.cwl
inputs:
- id: enzyme_pattern
  doc: A regex cleavage pattern such as [KR]|{P} to cleave proteins with.
  type: string
  inputBinding:
    prefix: --enzyme-pattern
- id: min
  doc: Minimum cleavage length
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: Maximum cleavage length
  type: long
  inputBinding:
    prefix: --max
- id: parallel
  doc: Should cleavages be done in parallel (default is serial digestion)?
  type: boolean
  inputBinding:
    prefix: --parallel
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastadigeststats.py
