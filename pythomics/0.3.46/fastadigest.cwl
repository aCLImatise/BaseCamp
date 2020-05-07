class: CommandLineTool
id: fastadigest.py.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- fastadigest.py
