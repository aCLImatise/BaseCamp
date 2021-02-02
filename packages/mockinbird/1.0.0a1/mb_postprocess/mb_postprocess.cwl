class: CommandLineTool
id: ../../../mb_postprocess.cwl
inputs:
- id: in_prefix
  doc: "preprocessing filename prefix - only required if there\nare multiple table\
    \ files in the specified preprocess\ndirectory"
  type: File
  inputBinding:
    prefix: --prefix
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
- mb-postprocess
