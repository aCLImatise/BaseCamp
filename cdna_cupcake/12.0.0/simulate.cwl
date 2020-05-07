class: CommandLineTool
id: simulate.py.cwl
inputs:
- id: copy
  doc: 'Number of copies to simulate per input sequence (default: 1)'
  type: string
  inputBinding:
    prefix: --copy
- id: ins
  doc: 'Insert error rate [0-1] (default: 0)'
  type: string
  inputBinding:
    prefix: --ins
- id: dele
  doc: 'Deletion error rate [0-1] (default: 0)'
  type: string
  inputBinding:
    prefix: --dele
- id: sub
  doc: 'Substitution error rate [0-1] (default: 0)'
  type: string
  inputBinding:
    prefix: --sub
outputs: []
cwlVersion: v1.1
baseCommand:
- simulate.py
