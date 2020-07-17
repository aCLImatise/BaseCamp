class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_postprocess.cwl
inputs:
- id: prefix
  doc: preprocessing filename prefix - only required if there are multiple table files
    in the specified preprocess directory
  type: string
  inputBinding:
    prefix: --prefix
- id: log_level
  doc: verbosity level of the logger
  type: string
  inputBinding:
    prefix: --log_level
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-postprocess
