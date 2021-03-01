class: CommandLineTool
id: cmph5tools.py_select.cwl
inputs:
- id: in_outfile
  doc: Either a pattern string or a filename
  type: long?
  inputBinding:
    prefix: --outFile
- id: in_idx_s
  doc: indices to select
  type: string[]
  inputBinding:
    prefix: --idxs
- id: in_group_by
  doc: groupBy expression, e.g., Movie*Barcode
  type: string?
  inputBinding:
    prefix: --groupBy
- id: in_group_by_csv
  doc: "groupByCsv file, e.g.\nGroup,Movie,Barcode\\ngroupname,movie,barcode"
  type: File?
  inputBinding:
    prefix: --groupByCsv
- id: in_where
  doc: where expression, e.g., ReadLength > 500
  type: long?
  inputBinding:
    prefix: --where
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
- select
