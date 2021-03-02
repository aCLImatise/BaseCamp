class: CommandLineTool
id: SplitSeq.py_sorted.cwl
inputs:
- id: in_split_seq_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SplitSeq.py
- sorted
