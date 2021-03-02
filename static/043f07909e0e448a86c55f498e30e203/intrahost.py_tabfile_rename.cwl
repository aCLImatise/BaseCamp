class: CommandLineTool
id: intrahost.py_tabfile_rename.cwl
inputs:
- id: in_col_idx
  doc: "Which column number to replace (0-based index).\n[default: 0]"
  type: long?
  inputBinding:
    prefix: --col_idx
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_in_file
  doc: Input flat file
  type: string
  inputBinding:
    position: 0
- id: in_map_file
  doc: "Map file. Two-column headerless file that maps input\nvalues to output values.\
    \ This script will error if\nthere are values in inFile that do not exist in\n\
    mapFile."
  type: string
  inputBinding:
    position: 1
- id: in_outfile
  doc: Output flat file
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- intrahost.py
- tabfile_rename
