class: CommandLineTool
id: pilconvert.py.cwl
inputs:
- id: pil_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: c
  doc: convert to format (default is given by extension)
  type: string
  inputBinding:
    prefix: -c
- id: g
  doc: convert to greyscale
  type: boolean
  inputBinding:
    prefix: -g
- id: p
  doc: convert to palette image (using standard palette)
  type: boolean
  inputBinding:
    prefix: -p
- id: r
  doc: convert to rgb
  type: boolean
  inputBinding:
    prefix: -r
- id: o
  doc: optimize output (trade speed for size)
  type: boolean
  inputBinding:
    prefix: -o
- id: q
  doc: set compression quality (0-100, JPEG only)
  type: string
  inputBinding:
    prefix: -q
- id: f
  doc: list supported file formats
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- pilconvert.py
