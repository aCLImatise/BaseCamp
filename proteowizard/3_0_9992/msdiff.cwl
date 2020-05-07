class: CommandLineTool
id: msdiff.cwl
inputs:
- id: filename_1
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: filename_2
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: p
  doc: '[ --precision ] arg (=9.9999999999999995e-07) : set floating point precision
    for  comparing binary data'
  type: boolean
  inputBinding:
    prefix: -p
- id: i
  doc: '[ --ignore ]                       : ignore metadata (compare scan binary  data
    and important scan metadata only)'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- msdiff
