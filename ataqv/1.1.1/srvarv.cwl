class: CommandLineTool
id: ../../../srvarv.cwl
inputs:
- id: port
  doc: 'The TCP port on which to serve the viewer (default: 8000).'
  type: string
  inputBinding:
    prefix: --port
- id: instance
  doc: 'The directory containing the viewer instance (default: current directory).'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- srvarv
