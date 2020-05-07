class: CommandLineTool
id: fastadigeststats.py.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- fastadigeststats.py
