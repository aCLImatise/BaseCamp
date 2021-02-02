class: CommandLineTool
id: ../../../checkAgpAndFa.cwl
inputs:
- id: in_exclude
  doc: "- Ignore seq (e.g. chrM for which we usually get\nsequence from GenBank but\
    \ don't have AGP)"
  type: string
  inputBinding:
    prefix: -exclude
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkAgpAndFa
