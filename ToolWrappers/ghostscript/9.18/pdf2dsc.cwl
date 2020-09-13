class: CommandLineTool
id: ../../../pdf2dsc.cwl
inputs:
- id: in_dict
  doc: :1193/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--
  type: boolean
  inputBinding:
    prefix: --dict
- id: in_pdf_file
  doc: ()   (r)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pdf2dsc
