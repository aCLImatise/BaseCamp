class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/simulate.py.cwl
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
- id: simple
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: error
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: simulation
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- simulate.py
