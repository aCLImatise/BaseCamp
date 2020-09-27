class: CommandLineTool
id: bp_biogetseq.pl.cwl
inputs:
- id: in_namespace
  doc: id [ ids... ]
  type: string
  inputBinding:
    prefix: --namespace
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_biogetseq.pl
