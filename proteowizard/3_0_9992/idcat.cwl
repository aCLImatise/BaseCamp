class: CommandLineTool
id: ../../../idcat.cwl
inputs:
- id: fields
  doc: ': comma separated list of fields to display'
  type: string
  inputBinding:
    prefix: --fields
- id: overwrite_file_exists
  doc: '[ --force ]        : overwrite file if it exists.'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_sort_single
  doc: '[ --sort ] arg     : sort by (single) column'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_output_filename
  doc: '[ --output ] arg   : output filename or directory (for multiple files).'
  type: boolean
  inputBinding:
    prefix: -o
- id: prints_extra_information
  doc: '[ --verbose ]      : prints extra information.'
  type: boolean
  inputBinding:
    prefix: -v
- id: file_masks
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- idcat
