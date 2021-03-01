class: CommandLineTool
id: extract_matrix.py.cwl
inputs:
- id: in_in
  doc: feature aligner file
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: output matrix
  type: string?
  inputBinding:
    prefix: --out
- id: in_columns
  doc: "Which columns are written\n"
  type: string[]
  inputBinding:
    prefix: --columns
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extract_matrix.py
