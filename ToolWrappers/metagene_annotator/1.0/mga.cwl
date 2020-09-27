class: CommandLineTool
id: mga.cwl
inputs:
- id: in_multiple_species_sequences
  doc: ': multiple species (sequences are individually treated)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_single_species_sequences
  doc: ': single species (sequences are treated as a unit)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mga
