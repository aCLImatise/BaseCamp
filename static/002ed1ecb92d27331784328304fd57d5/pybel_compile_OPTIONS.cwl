class: CommandLineTool
id: pybel_compile_OPTIONS.cwl
inputs:
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- compile
- OPTIONS
