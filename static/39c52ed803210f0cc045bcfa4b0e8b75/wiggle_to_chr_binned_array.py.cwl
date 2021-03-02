class: CommandLineTool
id: wiggle_to_chr_binned_array.py.cwl
inputs:
- id: in_score_file
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
- wiggle_to_chr_binned_array.py
