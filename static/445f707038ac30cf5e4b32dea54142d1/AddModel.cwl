class: CommandLineTool
id: AddModel.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: add_model_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: domain
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: phylum
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: class
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: order
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: family
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: genus
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: species
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: strain
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- AddModel.py
