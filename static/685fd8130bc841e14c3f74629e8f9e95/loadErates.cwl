class: CommandLineTool
id: loadErates.cwl
inputs:
- id: o
  doc: path to the overlap store to create
  type: string
  inputBinding:
    prefix: -O
- id: s
  doc: path to a sequence store
  type: string
  inputBinding:
    prefix: -S
- id: l
  doc: a list of evalue files in 'fileList'
  type: File
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- loadErates
