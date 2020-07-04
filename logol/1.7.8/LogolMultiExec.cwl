class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/LogolMultiExec.sh.cwl
inputs:
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: minimum
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: are
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_5
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: model
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: var_8
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: grammar
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- LogolMultiExec.sh
