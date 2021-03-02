class: CommandLineTool
id: estimate_mer_threshold.cwl
inputs:
- id: in_file_of_mercounts
  doc: file of mercounts
  type: File?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- estimate-mer-threshold
