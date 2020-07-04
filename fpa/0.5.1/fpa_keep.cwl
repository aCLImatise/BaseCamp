class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fpa_keep.cwl
inputs:
- id: containment
  doc: Keep only containment mapping
  type: boolean
  inputBinding:
    prefix: --containment
- id: dovetail
  doc: Keep only dovetail mapping
  type: boolean
  inputBinding:
    prefix: --dovetail
- id: internal_match
  doc: Keep only internal mapping
  type: boolean
  inputBinding:
    prefix: --internalmatch
- id: same_name
  doc: Keep only mapping where reads have same name
  type: boolean
  inputBinding:
    prefix: --same-name
- id: length_lower
  doc: Keep only mapping with length lower than value
  type: long
  inputBinding:
    prefix: --length-lower
- id: length_upper
  doc: Keep only mapping with length upper than value
  type: long
  inputBinding:
    prefix: --length-upper
- id: name_match
  doc: Keep only mapping where one reads match with regex
  type: string
  inputBinding:
    prefix: --name-match
- id: sequence_length_lower
  doc: Keep only mapping where one reads have length lower than value
  type: string
  inputBinding:
    prefix: --sequence-length-lower
- id: sequence_length_upper
  doc: Keep only mapping where one reads have length upper than value
  type: string
  inputBinding:
    prefix: --sequence-length-upper
outputs: []
cwlVersion: v1.1
baseCommand:
- fpa
- keep
