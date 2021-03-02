class: CommandLineTool
id: pickle_cat.py.cwl
inputs:
- id: in_pickle_file
  doc: Input pickle file.
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
- pickle_cat.py
