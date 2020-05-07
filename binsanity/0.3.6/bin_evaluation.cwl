class: CommandLineTool
id: bin_evaluation.cwl
inputs:
- id: genomes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genomes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 4
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- bin_evaluation
