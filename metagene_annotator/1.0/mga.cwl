class: CommandLineTool
id: ../../../mga.cwl
inputs:
- id: multiple_species_sequences
  doc: ': multiple species (sequences are individually treated)'
  type: boolean
  inputBinding:
    prefix: -m
- id: single_species_sequences
  doc: ': single species (sequences are treated as a unit)'
  type: boolean
  inputBinding:
    prefix: -s
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mga
