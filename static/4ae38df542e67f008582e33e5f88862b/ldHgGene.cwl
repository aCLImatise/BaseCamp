class: CommandLineTool
id: ../../../ldHgGene.cwl
inputs:
- id: implied_stop_after_cds
  doc: '- implied stop codon in GFF/GTF after CDS'
  type: boolean
  inputBinding:
    prefix: -impliedStopAfterCds
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ldHgGene
