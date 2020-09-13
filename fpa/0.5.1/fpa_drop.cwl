class: CommandLineTool
id: ../../../fpa_drop.cwl
inputs:
- id: in_containment
  doc: Drop containment mapping
  type: boolean
  inputBinding:
    prefix: --containment
- id: in_dovetail
  doc: Drop dovetail mapping
  type: boolean
  inputBinding:
    prefix: --dovetail
- id: in_internal_match
  doc: Drop internal mapping
  type: boolean
  inputBinding:
    prefix: --internalmatch
- id: in_same_name
  doc: Drop mapping where reads have same name
  type: boolean
  inputBinding:
    prefix: --same-name
- id: in_length_lower
  doc: Drop mapping with length lower than value
  type: long
  inputBinding:
    prefix: --length-lower
- id: in_length_upper
  doc: Drop mapping with length upper than value
  type: long
  inputBinding:
    prefix: --length-upper
- id: in_name_match
  doc: Drop mapping where one reads match with regex
  type: string
  inputBinding:
    prefix: --name-match
- id: in_sequence_length_lower
  doc: Drop mapping where one reads have length lower than value
  type: long
  inputBinding:
    prefix: --sequence-length-lower
- id: in_sequence_length_upper
  doc: Drop mapping where one reads have length upper than value
  type: long
  inputBinding:
    prefix: --sequence-length-upper
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fpa
- drop
