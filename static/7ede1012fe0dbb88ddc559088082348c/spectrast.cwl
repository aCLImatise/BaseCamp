class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/spectrast.cwl
inputs:
- id: verbose_mode
  doc: Verbose mode.
  type: boolean
  inputBinding:
    prefix: -V
- id: quiet_mode
  doc: Quiet mode.
  type: boolean
  inputBinding:
    prefix: -Q
- id: file_specify_name_log
  doc: <file>     Specify name of log file. Default is "spectrast.log".
  type: boolean
  inputBinding:
    prefix: -L
- id: file_specify_name_userdefined
  doc: <file>     Specify name of user-defined modifications file. Default is "spectrast.usermods".
  type: boolean
  inputBinding:
    prefix: -M
- id: filename_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: filename_n
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- spectrast
