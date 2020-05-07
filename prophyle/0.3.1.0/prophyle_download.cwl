class: CommandLineTool
id: prophyle_download.cwl
inputs:
- id: d
  doc: directory for the tree and the sequences [~/prophyle]
  type: string
  inputBinding:
    prefix: -d
- id: l
  doc: log file
  type: string
  inputBinding:
    prefix: -l
- id: f
  doc: rewrite library files if they already exist
  type: boolean
  inputBinding:
    prefix: -F
- id: c
  doc: '[STR [STR ...]]  advanced configuration (a JSON dictionary)'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle
- download
