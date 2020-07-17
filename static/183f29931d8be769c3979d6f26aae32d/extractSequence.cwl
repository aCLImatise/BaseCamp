class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extractSequence.cwl
inputs:
- id: extract_unmapped_sequence_a
  doc: extract all unmapped sequence in A
  type: boolean
  inputBinding:
    prefix: -a
- id: extract_unmapped_sequence_b
  doc: extract all unmapped sequence in B
  type: boolean
  inputBinding:
    prefix: -b
- id: ar
  doc: extract within run unmapped sequence in A
  type: boolean
  inputBinding:
    prefix: -ar
- id: br
  doc: extract within run unmapped sequence in B BOTH -ar and -br need to be specified!
  type: boolean
  inputBinding:
    prefix: -br
- id: mask_tandem_repeats
  doc: mask out tandem repeats listed in trfile
  type: boolean
  inputBinding:
    prefix: -t
- id: op
  doc: ''
  type: string
  inputBinding:
    prefix: -OP
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- extractSequence
