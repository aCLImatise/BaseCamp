class: CommandLineTool
id: last_merge_batches.cwl
inputs:
- id: in_files
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
- last-merge-batches
