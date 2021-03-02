class: CommandLineTool
id: chktrust.cwl
inputs:
- id: in_quiet_mode_gui
  doc: quiet mode (no gui)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_verbose_mode_display
  doc: verbose mode (display status for every steps)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chktrust
