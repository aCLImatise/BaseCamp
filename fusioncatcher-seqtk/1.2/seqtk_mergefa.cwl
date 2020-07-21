class: CommandLineTool
id: ../../../seqtk_mergefa.cwl
inputs:
- id: quality_threshold
  doc: quality threshold [0]
  type: long
  inputBinding:
    prefix: -q
- id: take_intersection
  doc: take intersection
  type: boolean
  inputBinding:
    prefix: -i
- id: convert_lowercase_when
  doc: convert to lowercase when one of the input base is N
  type: boolean
  inputBinding:
    prefix: -m
- id: pick_random_allele
  doc: pick a random allele from het
  type: boolean
  inputBinding:
    prefix: -r
- id: in_one_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_two_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- mergefa
