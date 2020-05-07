class: CommandLineTool
id: spectrast.cwl
inputs:
- id: filename_1
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: filename_n
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: v
  doc: Verbose mode.
  type: boolean
  inputBinding:
    prefix: -V
- id: q
  doc: Quiet mode.
  type: boolean
  inputBinding:
    prefix: -Q
- id: l
  doc: <file>     Specify name of log file. Default is "spectrast.log".
  type: boolean
  inputBinding:
    prefix: -L
- id: m
  doc: <file>     Specify name of user-defined modifications file. Default is "spectrast.usermods".
  type: boolean
  inputBinding:
    prefix: -M
outputs: []
cwlVersion: v1.1
baseCommand:
- spectrast
