class: CommandLineTool
id: refold.cwl
inputs:
- id: in_maximum
  doc: "Specify a maximum number of structures.\nDefault is 20 structures."
  type: boolean?
  inputBinding:
    prefix: --maximum
- id: in_percent
  doc: "Specify a maximum percent energy difference.\nDefault is 10 percent (specified\
    \ as 10, not 0.1)."
  type: boolean?
  inputBinding:
    prefix: --percent
- id: in_window
  doc: "Specify a window size.\nDefault is determined by the length of the sequence.\n"
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_save_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- refold
