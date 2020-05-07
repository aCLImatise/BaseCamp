class: CommandLineTool
id: bp_biogetseq.pl.cwl
inputs:
- id: namespace
  doc: id [ ids... ]
  type: string
  inputBinding:
    prefix: --namespace
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_biogetseq.pl
