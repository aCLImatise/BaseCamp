class: CommandLineTool
id: split_fasta.py.cwl
inputs:
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: split
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: sequences
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: fixed
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: number
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: multiple
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- split_fasta.py
