class: CommandLineTool
id: findNovelJunctions.cwl
inputs:
- id: in_or
  doc: ./findNovelJunction refFlat.bed junction.bed
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- findNovelJunctions
