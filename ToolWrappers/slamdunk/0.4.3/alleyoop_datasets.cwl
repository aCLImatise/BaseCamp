class: CommandLineTool
id: alleyoop_datasets.cwl
inputs:
- id: in_alley_oop
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- alleyoop
- datasets
