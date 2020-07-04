class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pilprint.py.cwl
inputs:
- id: colour_printer_default
  doc: colour printer (default is monochrome)
  type: boolean
  inputBinding:
    prefix: -c
- id: print_lpr_default
  doc: print via lpr (default is stdout)
  type: boolean
  inputBinding:
    prefix: -p
- id: same_p_use
  doc: same as -p but use given printer
  type: string
  inputBinding:
    prefix: -P
- id: files_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pilprint.py
