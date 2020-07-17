class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pipits_funguild.py.cwl
inputs:
- id: input_otu_table
  doc: '[REQUIRED] Input OTU table generated from pipits_process.'
  type: string
  inputBinding:
    prefix: -i
- id: output_funguild_formatted
  doc: '[REQUIRED] Output FUNGuild formatted OTU table.'
  type: string
  inputBinding:
    prefix: -o
- id: converts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_3
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
- id: var_8
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: table_dot
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_funguild.py
