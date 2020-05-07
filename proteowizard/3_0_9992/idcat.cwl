class: CommandLineTool
id: idcat.cwl
inputs:
- id: file_masks
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: fields
  doc: ': comma separated list of fields to display'
  type: string
  inputBinding:
    prefix: --fields
- id: f
  doc: '[ --force ]        : overwrite file if it exists.'
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: '[ --sort ] arg     : sort by (single) column'
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: '[ --output ] arg   : output filename or directory (for multiple files).'
  type: boolean
  inputBinding:
    prefix: -o
- id: v
  doc: '[ --verbose ]      : prints extra information.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- idcat
