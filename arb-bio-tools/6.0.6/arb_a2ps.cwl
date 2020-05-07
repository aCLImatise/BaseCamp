class: CommandLineTool
id: arb_a2ps.cwl
inputs:
- id: d
  doc: -nd     print (DON'T PRINT) current date at the bottom
  type: boolean
  inputBinding:
    prefix: -d
- id: fnum
  doc: font size, num is a float number
  type: boolean
  inputBinding:
    prefix: -Fnum
- id: h_str
  doc: use str like header title for subsequent files
  type: boolean
  inputBinding:
    prefix: -Hstr
- id: l
  doc: print in LANDSCAPE mode
  type: boolean
  inputBinding:
    prefix: -l
- id: lnum
  doc: use num lines per page
  type: boolean
  inputBinding:
    prefix: -lnum
- id: m
  doc: process the file as a man
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: -nn     NUMBER (don't number) line files
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: print in portrait mode
  type: boolean
  inputBinding:
    prefix: -p
- id: q
  doc: print in quiet mode (no summary)
  type: boolean
  inputBinding:
    prefix: -q
- id: s
  doc: -ns     PRINT (don't print) surrounding borders
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_a2ps
