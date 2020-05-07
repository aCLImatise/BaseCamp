class: CommandLineTool
id: ptoh.cwl
inputs:
- id: f
  doc: ': emulate domain- or semi-global alignment mode.'
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: ': output in SAM format (if not set: HMMER1 format).'
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: ': emulate local alignment mode.'
  type: boolean
  inputBinding:
    prefix: -F
- id: d
  doc: '<value>: delete-to-delete transition probabilities (default: 0.9).'
  type: boolean
  inputBinding:
    prefix: -D
- id: i
  doc: '<value>: insert-to-insert transition probabilities (default: 0.99).'
  type: boolean
  inputBinding:
    prefix: -I
- id: l
  doc: '<value>: logarithmic base (default: 1.0233739).'
  type: boolean
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- ptoh
