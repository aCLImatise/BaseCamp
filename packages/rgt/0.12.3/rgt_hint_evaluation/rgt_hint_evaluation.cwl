class: CommandLineTool
id: rgt_hint_evaluation.cwl
inputs:
- id: in_tfbs_file
  doc: ''
  type: File
  inputBinding:
    prefix: --tfbs-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgt-hint
- evaluation
