class: CommandLineTool
id: pair8removal.py.cwl
inputs:
- id: input
  doc: Tab separeted text file such that one line has two reads which are paired (i.e.
    generated via 'paste - - - - - - - -').
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Tab separeted text file such that one line has two reads which are paired (i.e.
    generated via 'paste - - - - - - - -').
  type: string
  inputBinding:
    prefix: --output
- id: length
  doc: The minimum length of a read. All reads shorter than this will be removed.
    Default is 25.
  type: long
  inputBinding:
    prefix: --length
outputs: []
cwlVersion: v1.1
baseCommand:
- pair8removal.py
