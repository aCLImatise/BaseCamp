class: CommandLineTool
id: pilconvert.py.cwl
inputs:
- id: in_convert_format_default
  doc: convert to format (default is given by extension)
  type: string
  inputBinding:
    prefix: -c
- id: in_convert_to_greyscale
  doc: convert to greyscale
  type: boolean
  inputBinding:
    prefix: -g
- id: in_convert_palette_image
  doc: convert to palette image (using standard palette)
  type: boolean
  inputBinding:
    prefix: -p
- id: in_convert_to_rgb
  doc: convert to rgb
  type: boolean
  inputBinding:
    prefix: -r
- id: in_optimize_output_trade
  doc: optimize output (trade speed for size)
  type: boolean
  inputBinding:
    prefix: -o
- id: in_set_compression_quality
  doc: set compression quality (0-100, JPEG only)
  type: long
  inputBinding:
    prefix: -q
- id: in_list_supported_formats
  doc: list supported file formats
  type: boolean
  inputBinding:
    prefix: -f
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pilconvert.py
