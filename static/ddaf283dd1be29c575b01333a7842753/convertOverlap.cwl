class: CommandLineTool
id: convertOverlap.cwl
inputs:
- id: a
  doc: convert to ASCII, from a BINARY overlap file.
  type: boolean
  inputBinding:
    prefix: -a
- id: ovl
  doc: convert to BINARY, from an ASCII overlap file.
  type: boolean
  inputBinding:
    prefix: -ovl
- id: obt
  doc: convert to BINARY, from an ASCII partial overlap file.
  type: boolean
  inputBinding:
    prefix: -obt
- id: mer
  doc: convert to BINARY, from an ASCII mer overlap file.
  type: boolean
  inputBinding:
    prefix: -mer
- id: i
  doc: read overlaps from 'in'; default is stdin
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: write overlaps to 'out'; default is stdout
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- convertOverlap
