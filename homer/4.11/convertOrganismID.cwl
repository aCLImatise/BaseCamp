class: CommandLineTool
id: ../../../convertOrganismID.pl_output ID type.cwl
inputs:
- id: convert_organ_is_middot_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: current_organs_is_m
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: new_organism
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_id_type
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- convertOrganismID.pl
- output ID type
