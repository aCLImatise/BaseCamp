class: CommandLineTool
id: cbTool.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_fix_dots
  doc: "try to fix R's mangling of various special chars to '.' in\nthe cell IDs"
  type: boolean?
  inputBinding:
    prefix: --fixDots
- id: in_first
  doc: "only for metaCat: names of fields to order first, comma-\nsep, e.g. disease,age.\
    \ Not cellId, that's always the first\nfield"
  type: string?
  inputBinding:
    prefix: --first
- id: in_del
  doc: 'only for metaCat: names of fields to remove'
  type: string?
  inputBinding:
    prefix: --del
- id: in_mtx_two_tsv
  doc: '- convert matrix market to .tsv.gz'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cbTool
