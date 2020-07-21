class: CommandLineTool
id: ../../../fastadigest.py.cwl
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
- id: unique
  doc: Only return unique peptides per cleavage
  type: boolean
  inputBinding:
    prefix: --unique
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
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: frame
  doc: ''
  type: string
  inputBinding:
    prefix: --frame
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastadigest.py
