class: CommandLineTool
id: fusioncatcher_batch.py.cwl
inputs:
- id: a
  doc: file with two columns (that are tab separated), where the first column
  type: string
  inputBinding:
    prefix: '- a'
- id: a
  doc: which contains subdirectories and each subdirectory contains one
  type: Directory
  inputBinding:
    prefix: '- a'
outputs: []
cwlVersion: v1.1
baseCommand:
- fusioncatcher-batch.py
