class: CommandLineTool
id: err_correct_w_genome.py.cwl
inputs:
- id: generate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequences
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: using
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: bases
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: sam
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- err_correct_w_genome.py
