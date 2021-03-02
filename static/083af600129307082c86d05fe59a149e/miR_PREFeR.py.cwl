class: CommandLineTool
id: miR_PREFeR.py.cwl
inputs:
- id: in_log
  doc: Generate a log file.
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_keep_tmp
  doc: "After finish the whole pipeline, do not remove the\ntemporary folder that\
    \ contains the intermidate files."
  type: boolean?
  inputBinding:
    prefix: --keep-tmp
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_config_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- miR_PREFeR.py
