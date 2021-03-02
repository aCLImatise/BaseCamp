class: CommandLineTool
id: _webpng.cwl
inputs:
- id: in_turns_onoff_interlace
  doc: Turns on/off interlace
  type: string?
  inputBinding:
    prefix: -i
- id: in_prints_table_color
  doc: Prints the table of color indexes
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_set_transparent_color
  doc: Set the transparent color to the specified index (0-255 or "none")
  type: long?
  inputBinding:
    prefix: -t
- id: in_reports_dimensions_characteristics
  doc: Reports the dimensions and other characteristics of the image
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_prints_alpha_channels
  doc: Prints all alpha channels that are not 100% opaque
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_web_png
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _webpng
