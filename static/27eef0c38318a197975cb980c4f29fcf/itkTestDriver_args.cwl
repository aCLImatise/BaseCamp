class: CommandLineTool
id: itkTestDriver_args.cwl
inputs:
- id: prg
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- itkTestDriver
- args
