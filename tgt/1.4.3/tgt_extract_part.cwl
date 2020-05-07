class: CommandLineTool
id: tgt_extract_part.py.cwl
inputs:
- id: tg_path
  doc: Path to the input TextGrid
  type: string
  inputBinding:
    position: 0
- id: s
  doc: Start time of the interval to be extracted.
  type: string
  inputBinding:
    prefix: -s
- id: e
  doc: End time of the interval to be extracted.
  type: string
  inputBinding:
    prefix: -e
- id: o
  doc: Path to the output file. Defaults to the original path with _part appended
    to the filename.
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- tgt-extract-part.py
