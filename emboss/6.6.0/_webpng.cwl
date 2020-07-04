class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/_webpng.cwl
inputs:
- id: turns_onoff_interlace
  doc: Turns on/off interlace
  type: string
  inputBinding:
    prefix: -i
- id: prints_table_color
  doc: Prints the table of color indexes
  type: boolean
  inputBinding:
    prefix: -l
- id: set_transparent_color
  doc: Set the transparent color to the specified index (0-255 or "none")
  type: string
  inputBinding:
    prefix: -t
- id: reports_dimensions_characteristics
  doc: Reports the dimensions and other characteristics of the image
  type: boolean
  inputBinding:
    prefix: -d
- id: prints_alpha_channels
  doc: Prints all alpha channels that are not 100% opaque
  type: boolean
  inputBinding:
    prefix: -a
- id: web_png
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- _webpng
