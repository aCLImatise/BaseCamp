class: CommandLineTool
id: cufflinks2gff3.cwl
inputs:
- id: transcripts_gtf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cufflinks2gff3
