class: CommandLineTool
id: ../../../lyner_frequent_sets.cwl
inputs:
- id: in_min_support
  doc: ''
  type: double
  inputBinding:
    prefix: --min-support
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- frequent-sets
