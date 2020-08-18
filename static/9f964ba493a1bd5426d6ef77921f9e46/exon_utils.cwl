class: CommandLineTool
id: ../../../exon_utils.cwl
inputs:
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fetch
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: constitutive
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: exons
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: gff
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- exon_utils
