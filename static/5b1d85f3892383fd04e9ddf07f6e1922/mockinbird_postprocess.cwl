class: CommandLineTool
id: ../../../mockinbird_postprocess.cwl
inputs:
- id: in_prefix
  doc: "preprocessing filename prefix - only required if there\nare multiple table\
    \ files in the specified preprocess\ndirectory (default: None)"
  type: File
  inputBinding:
    prefix: --prefix
- id: in_log_level
  doc: 'verbosity level of the logger (default: info)'
  type: string
  inputBinding:
    prefix: --log_level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mockinbird
- postprocess
