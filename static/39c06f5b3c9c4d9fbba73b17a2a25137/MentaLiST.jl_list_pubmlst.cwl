class: CommandLineTool
id: MentaLiST.jl_list_pubmlst.cwl
inputs:
- id: in_prefix
  doc: "Only list schemes where the species name starts\nwith this prefix."
  type: string
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MentaLiST.jl
- list_pubmlst
