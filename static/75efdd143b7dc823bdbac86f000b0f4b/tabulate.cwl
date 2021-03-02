class: CommandLineTool
id: tabulate.cwl
inputs:
- id: in_header
  doc: use the first row of data as a table header
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_output
  doc: 'print table to FILE (default: stdout)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_sep
  doc: 'use a custom column separator (default: whitespace)'
  type: string?
  inputBinding:
    prefix: --sep
- id: in_float
  doc: 'floating point number format (default: g)'
  type: double?
  inputBinding:
    prefix: --float
- id: in_format
  doc: "set output table format; supported formats:\nplain, simple, grid, fancy_grid,\
    \ pipe, orgtbl,\nrst, mediawiki, html, latex, latex_booktabs, tsv\n(default: simple)\n"
  type: string?
  inputBinding:
    prefix: --format
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tabulate
