class: CommandLineTool
id: ../../../msdiff.cwl
inputs:
- id: arg__set
  doc: '[ --precision ] arg (=9.9999999999999995e-07) : set floating point precision
    for  comparing binary data'
  type: boolean
  inputBinding:
    prefix: -p
- id: ignore_metadata_compare
  doc: '[ --ignore ]                       : ignore metadata (compare scan binary  data
    and important scan metadata only)'
  type: boolean
  inputBinding:
    prefix: -i
- id: filename_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: filename_two
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- msdiff
