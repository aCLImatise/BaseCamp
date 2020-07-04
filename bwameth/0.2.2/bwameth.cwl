class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bwameth.py.cwl
inputs:
- id: map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bisulfite
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_2
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: an
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_silico
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: var_7
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: using
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: me_mdot
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- bwameth.py
