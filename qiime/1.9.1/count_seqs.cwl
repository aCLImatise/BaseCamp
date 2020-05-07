class: CommandLineTool
id: count_seqs.py.cwl
inputs:
- id: input_fps
  doc: the input filepaths (comma-separated) [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fps
outputs: []
cwlVersion: v1.1
baseCommand:
- count_seqs.py
