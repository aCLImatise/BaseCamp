class: CommandLineTool
id: findNovelJunctions.cwl
inputs:
- id: or
  doc: ./findNovelJunction refFlat.bed junction.bed
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- findNovelJunctions
