class: CommandLineTool
id: ../../../mb_preprocess.cwl
inputs:
- id: in_log_level
  doc: verbosity level of the logger
  type: string
  inputBinding:
    prefix: --log_level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-preprocess
