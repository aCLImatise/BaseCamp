class: CommandLineTool
id: cook_coding_for_blast.py.cwl
inputs:
- id: in_fast_a_files
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
- cook_coding_for_blast.py
