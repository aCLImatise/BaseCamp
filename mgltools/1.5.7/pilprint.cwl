class: CommandLineTool
id: pilprint.py.cwl
inputs:
- id: pil_print
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: c
  doc: colour printer (default is monochrome)
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: print via lpr (default is stdout)
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: same as -p but use given printer
  type: string
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- pilprint.py
