class: CommandLineTool
id: _webpng.cwl
inputs:
- id: i
  doc: <y|n>   Turns on/off interlace
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: Prints the table of color indexes
  type: boolean
  inputBinding:
    prefix: -l
- id: t
  doc: Set the transparent color to the specified index (0-255 or "none")
  type: string
  inputBinding:
    prefix: -t
- id: d
  doc: Reports the dimensions and other characteristics of the image
  type: boolean
  inputBinding:
    prefix: -d
- id: a
  doc: Prints all alpha channels that are not 100% opaque
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- _webpng
