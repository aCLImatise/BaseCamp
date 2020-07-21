class: CommandLineTool
id: ../../../grabdp.cwl
inputs:
- id: required_or_modelfile
  doc: required (or -modelfile)
  type: string
  inputBinding:
    prefix: -i
- id: db
  doc: required if -match_probs not specified
  type: string
  inputBinding:
    prefix: -db
- id: id
  doc: optional
  type: string
  inputBinding:
    prefix: -id
- id: dp_style
  doc: optional -- create <runname>.pdoc posterior decoding of model and first db
    sequence or -id sequence. use view_pdoc to inspect.
  type: string
  inputBinding:
    prefix: -dpstyle
- id: dump_match_probs
  doc: If 1, then dump the model match probabilities in a rdb file name <runname>.match-rdb
  type: string
  inputBinding:
    prefix: -dump_match_probs
outputs: []
cwlVersion: v1.1
baseCommand:
- grabdp
