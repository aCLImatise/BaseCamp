class: CommandLineTool
id: ocrad.cwl
inputs:
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: append
  doc: append text to output file
  type: boolean
  inputBinding:
    prefix: --append
- id: charset
  doc: try `--charset=help' for a list of names
  type: string
  inputBinding:
    prefix: --charset
- id: filter
  doc: try `--filter=help' for a list of names
  type: string
  inputBinding:
    prefix: --filter
- id: force
  doc: force overwrite of output file
  type: boolean
  inputBinding:
    prefix: --force
- id: format
  doc: output format (byte, utf8)
  type: string
  inputBinding:
    prefix: --format
- id: invert
  doc: invert image levels (white on black)
  type: boolean
  inputBinding:
    prefix: --invert
- id: layout
  doc: perform layout analysis
  type: boolean
  inputBinding:
    prefix: --layout
- id: output
  doc: place the output into <file>
  type: File
  inputBinding:
    prefix: --output
- id: quiet
  doc: suppress all messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: scale
  doc: =[-]<n>       scale input image by [1/]<n>
  type: boolean
  inputBinding:
    prefix: --scale
- id: transform
  doc: try `--transform=help' for a list of names
  type: string
  inputBinding:
    prefix: --transform
- id: threshold
  doc: =<n%>     threshold for binarization (0-100%)
  type: boolean
  inputBinding:
    prefix: --threshold
- id: cut
  doc: =<l,t,w,h>      cut input image by given rectangle
  type: boolean
  inputBinding:
    prefix: --cut
- id: verbose
  doc: be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: export
  doc: export OCR Results File to <file>
  type: File
  inputBinding:
    prefix: --export
outputs: []
cwlVersion: v1.1
baseCommand:
- ocrad
