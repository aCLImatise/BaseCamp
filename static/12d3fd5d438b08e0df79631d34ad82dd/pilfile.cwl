class: CommandLineTool
id: pilfile.py.cwl
inputs:
- id: pil_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: f
  doc: list supported file formats
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: show associated info and tile data
  type: boolean
  inputBinding:
    prefix: -i
- id: v
  doc: verify file headers
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: quiet, don't warn for unidentified/missing/broken files
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- pilfile.py
