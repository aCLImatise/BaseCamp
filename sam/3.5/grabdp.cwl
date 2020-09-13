class: CommandLineTool
id: ../../../grabdp.cwl
inputs:
- id: in_db
  doc: required if -match_probs not specified
  type: File
  inputBinding:
    prefix: -db
- id: in_id
  doc: optional
  type: string
  inputBinding:
    prefix: -id
- id: in_dp_style
  doc: "optional -- create <runname>.pdoc\nposterior decoding of model and\nfirst\
    \ db sequence or -id sequence.\nuse view_pdoc to inspect."
  type: long
  inputBinding:
    prefix: -dpstyle
- id: in_dump_match_probs
  doc: "If 1, then dump the model match probabilities\nin a rdb file name <runname>.match-rdb\n"
  type: long
  inputBinding:
    prefix: -dump_match_probs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- grabdp
