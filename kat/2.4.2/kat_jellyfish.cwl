class: CommandLineTool
id: kat_jellyfish.cwl
inputs:
- id: jellyfish
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cmd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: arg
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- kat_jellyfish
