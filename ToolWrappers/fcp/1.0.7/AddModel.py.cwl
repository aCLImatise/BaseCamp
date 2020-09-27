class: CommandLineTool
id: AddModel.py.cwl
inputs:
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_domain
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_phylum
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_class
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_order
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_family
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_genus
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_species
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_strain
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- AddModel.py
