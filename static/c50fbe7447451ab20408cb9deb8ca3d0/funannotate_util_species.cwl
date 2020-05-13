class: CommandLineTool
id: funannotate_util_species.cwl
inputs:
- id: species_py
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- util
- species
