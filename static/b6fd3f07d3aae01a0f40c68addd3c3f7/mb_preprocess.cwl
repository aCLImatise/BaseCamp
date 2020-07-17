class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_preprocess.cwl
inputs:
- id: log_level
  doc: verbosity level of the logger
  type: string
  inputBinding:
    prefix: --log_level
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-preprocess
