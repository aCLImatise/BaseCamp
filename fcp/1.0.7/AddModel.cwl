class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/AddModel.py.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: domain
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: phylum
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: class
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: order
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: family
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: genus
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: species
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: strain
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- AddModel.py
