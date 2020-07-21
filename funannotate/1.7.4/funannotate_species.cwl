class: CommandLineTool
id: ../../../funannotate_species.cwl
inputs:
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
- id: species_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- species
