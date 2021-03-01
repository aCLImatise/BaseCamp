class: CommandLineTool
id: pybda_sample.cwl
inputs:
- id: in_config
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_spark
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pybda
- sample
