class: CommandLineTool
id: ../../../cufflinks2gff3.cwl
inputs:
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: converts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: cufflinks
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: transcripts_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- cufflinks2gff3
