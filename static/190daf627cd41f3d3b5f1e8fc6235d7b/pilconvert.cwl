class: CommandLineTool
id: ../../../pilconvert.py.cwl
inputs:
- id: convert_default_given
  doc: convert to format (default is given by extension)
  type: string
  inputBinding:
    prefix: -c
- id: convert_to_greyscale
  doc: convert to greyscale
  type: boolean
  inputBinding:
    prefix: -g
- id: convert_using_palette
  doc: convert to palette image (using standard palette)
  type: boolean
  inputBinding:
    prefix: -p
- id: convert_to_rgb
  doc: convert to rgb
  type: boolean
  inputBinding:
    prefix: -r
- id: optimize_output_trade
  doc: optimize output (trade speed for size)
  type: boolean
  inputBinding:
    prefix: -o
- id: set_quality_jpeg
  doc: set compression quality (0-100, JPEG only)
  type: string
  inputBinding:
    prefix: -q
- id: list_supported_formats
  doc: list supported file formats
  type: boolean
  inputBinding:
    prefix: -f
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pilconvert.py
