class: CommandLineTool
id: extractSequence.cwl
inputs:
- id: a
  doc: extract all unmapped sequence in A
  type: boolean
  inputBinding:
    prefix: -a
- id: b
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
- id: t
  doc: mask out tandem repeats listed in trfile
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- extractSequence
