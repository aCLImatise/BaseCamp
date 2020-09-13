class: CommandLineTool
id: ../../../crux_pipeline.cwl
inputs:
- id: in_gap_tolerance_dot
  doc: = 3.
  type: long
  inputBinding:
    prefix: --gap-tolerance.
- id: in_train_fdr
  doc: ). This option allows the user to specify which feature is used
  type: boolean
  inputBinding:
    prefix: --train-fdr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- pipeline
