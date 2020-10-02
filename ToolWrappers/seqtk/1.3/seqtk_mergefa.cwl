class: CommandLineTool
id: seqtk_mergefa.cwl
inputs:
- id: in_quality_threshold
  doc: quality threshold [0]
  type: long
  inputBinding:
    prefix: -q
- id: in_take_intersection
  doc: take intersection
  type: boolean
  inputBinding:
    prefix: -i
- id: in_convert_lowercase_when
  doc: convert to lowercase when one of the input base is N
  type: boolean
  inputBinding:
    prefix: -m
- id: in_pick_random_allele
  doc: pick a random allele from het
  type: boolean
  inputBinding:
    prefix: -r
- id: in_in_one_dot_fa
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_two_dot_fa
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqtk
- mergefa
