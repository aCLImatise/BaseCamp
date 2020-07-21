class: CommandLineTool
id: ../../../bp_biogetseq.pl.cwl
inputs:
- id: namespace
  doc: id [ ids... ]
  type: string
  inputBinding:
    prefix: --namespace
- id: dbname
  doc: ''
  type: string
  inputBinding:
    prefix: --dbname
- id: format
  doc: ''
  type: string
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_biogetseq.pl
