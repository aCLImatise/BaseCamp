class: CommandLineTool
id: rsidx.cwl
inputs:
- id: sub_cmd
  doc: index, search
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rsidx
