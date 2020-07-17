class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/miso_zip.cwl
inputs:
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: compress
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: directory
  doc: ''
  type: Directory
  inputBinding:
    position: 3
- id: containing
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: miso
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- miso_zip
