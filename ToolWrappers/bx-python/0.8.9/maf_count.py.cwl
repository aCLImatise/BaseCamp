class: CommandLineTool
id: maf_count.py.cwl
inputs:
- id: in_cols
  doc: count alignment columns rather than number of
  type: boolean?
  inputBinding:
    prefix: --cols
- id: in_each
  doc: print a count for each alignment rather than whole
  type: boolean?
  inputBinding:
    prefix: --each
- id: in_file
  doc: -r REF, --ref=REF     reference sequence (first by default, 0..n)
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- maf_count.py
