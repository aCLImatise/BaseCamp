class: CommandLineTool
id: tgt_shift_boundaries.py.cwl
inputs:
- id: shift
  doc: offset by which to shift the boundaries (positive or negative)
  type: string
  inputBinding:
    position: 0
- id: file
  doc: the textgrid file
  type: File
  inputBinding:
    position: 1
- id: encoding
  doc: file encoding (default "utf-8")
  type: string
  inputBinding:
    prefix: --encoding
- id: format
  doc: the output format (default "short")
  type: string
  inputBinding:
    prefix: --format
- id: outfile
  doc: the output file (defaults to inputfile.shifted.Extension)
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- tgt-shift-boundaries.py
