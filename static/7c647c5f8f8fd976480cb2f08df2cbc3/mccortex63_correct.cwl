class: CommandLineTool
id: mccortex63_correct.cwl
inputs:
- id: seq
  doc: <out>.fa.gz, --seq2 outputs <out>.1.fa.gz, <out>.2.fa.gz
  type: string
  inputBinding:
    prefix: --seq
- id: seq
  doc: come AFTER two/oneway options. Output may be slightly shuffled.
  type: string
  inputBinding:
    prefix: --seq
outputs: []
cwlVersion: v1.1
baseCommand:
- mccortex63
- correct
