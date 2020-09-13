class: CommandLineTool
id: ../../../seqmerge.cwl
inputs:
- id: in_separator
  doc: "sequence count will be appended as '(SEP)COUNT'\n"
  type: string
  inputBinding:
    prefix: --separator
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqmerge
