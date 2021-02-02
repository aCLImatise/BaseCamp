class: CommandLineTool
id: pilprint.py.cwl
inputs:
- id: in_colour_printer_default
  doc: colour printer (default is monochrome)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_print_lpr_default
  doc: print via lpr (default is stdout)
  type: boolean
  inputBinding:
    prefix: -p
- id: in_same_p_use
  doc: same as -p but use given printer
  type: string
  inputBinding:
    prefix: -P
- id: in_files_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pilprint.py
