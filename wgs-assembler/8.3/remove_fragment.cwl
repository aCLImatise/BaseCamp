class: CommandLineTool
id: remove_fragment.cwl
inputs:
- id: f
  doc: one uid per line
  type: string
  inputBinding:
    prefix: -f
- id: i
  doc: fragments input
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: fragments NOT listed in UIDfile are saved here
  type: string
  inputBinding:
    prefix: -o
- id: o
  doc: fragments     listed in UIDfile are saved here
  type: string
  inputBinding:
    prefix: -O
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_fragment
