class: CommandLineTool
id: pphs_filename.pdf.cwl
inputs:
- id: dict
  doc: :1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:93/200(L)--
  type: boolean
  inputBinding:
    prefix: --dict
outputs: []
cwlVersion: v1.1
baseCommand:
- pphs
- filename.pdf
