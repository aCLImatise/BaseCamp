class: CommandLineTool
id: ../../../qcat_eval.cwl
inputs:
- id: in_tsv
  doc: ''
  type: string
  inputBinding:
    prefix: --tsv
- id: in_name
  doc: ''
  type: string
  inputBinding:
    prefix: --name
- id: in_dataset
  doc: ''
  type: string
  inputBinding:
    prefix: --dataset
- id: in_summary
  doc: ''
  type: boolean
  inputBinding:
    prefix: --summary
- id: in_guppy_summary
  doc: ''
  type: string
  inputBinding:
    prefix: --guppy_summary
- id: in_get_incorrect
  doc: ''
  type: string
  inputBinding:
    prefix: --get-incorrect
- id: in_fast_q
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qcat-eval
