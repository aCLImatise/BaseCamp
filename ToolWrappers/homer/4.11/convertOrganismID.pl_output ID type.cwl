class: CommandLineTool
id: convertOrganismID.pl_output ID type.cwl
inputs:
- id: in_convert_organ_is_middot_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_current_organs_is_m
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_new_organism
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_output_id_type
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convertOrganismID.pl
- output ID type
