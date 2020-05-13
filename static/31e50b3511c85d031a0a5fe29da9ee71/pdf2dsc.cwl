class: CommandLineTool
id: pdf2dsc.cwl
inputs:
- id: pdf_file
  doc: ()   (r)
  type: string
  inputBinding:
    position: 0
- id: dict
  doc: :1193/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--
  type: boolean
  inputBinding:
    prefix: --dict
outputs: []
cwlVersion: v1.1
baseCommand:
- pdf2dsc
