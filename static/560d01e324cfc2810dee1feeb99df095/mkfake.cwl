class: CommandLineTool
id: mkfake.cwl
inputs:
- id: plates
  doc: ': number of plates (default: 1)'
  type: boolean
  inputBinding:
    prefix: -plates
- id: runs
  doc: ': number of plate runs (acquisitions) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -runs
- id: rows
  doc: ': number of rows in a plate (default: 1)'
  type: boolean
  inputBinding:
    prefix: -rows
- id: columns
  doc: ': number of columns in a plate (default: 1)'
  type: boolean
  inputBinding:
    prefix: -columns
- id: fields
  doc: ': number of fields in a plate (default: 1)'
  type: boolean
  inputBinding:
    prefix: -fields
- id: debug
  doc: ': turn on debugging output'
  type: boolean
  inputBinding:
    prefix: -debug
outputs: []
cwlVersion: v1.1
baseCommand:
- mkfake
