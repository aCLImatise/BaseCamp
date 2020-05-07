class: CommandLineTool
id: pipits_funguild.py.cwl
inputs:
- id: converts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: otu
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tables
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: into
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: fun_guild
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: formatted
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: otu
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: i
  doc: '[REQUIRED] Input OTU table generated from pipits_process.'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: '[REQUIRED] Output FUNGuild formatted OTU table.'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_funguild.py
