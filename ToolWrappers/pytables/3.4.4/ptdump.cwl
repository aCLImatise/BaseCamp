class: CommandLineTool
id: ptdump.cwl
inputs:
- id: in_verbose
  doc: dump more metainformation on nodes
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_dump
  doc: dump data information on leaves
  type: boolean?
  inputBinding:
    prefix: --dump
- id: in_show_attrs
  doc: "show attributes in nodes (only useful when -v or -d\nare active)"
  type: boolean?
  inputBinding:
    prefix: --showattrs
- id: in_sort
  doc: sort output by node name
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_col_info
  doc: show info of columns in tables (only useful when -v or
  type: boolean?
  inputBinding:
    prefix: --colinfo
- id: in_idx_info
  doc: show info of indexed columns (only useful when -v or
  type: boolean?
  inputBinding:
    prefix: --idxinfo
- id: in_range
  doc: "select a RANGE of rows (in the form \"start,stop,step\")\nduring the copy\
    \ of *all* the leaves. Default values\nare \"None,None,1\", which means a copy\
    \ of all the rows.\n"
  type: long?
  inputBinding:
    prefix: --range
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ptdump
