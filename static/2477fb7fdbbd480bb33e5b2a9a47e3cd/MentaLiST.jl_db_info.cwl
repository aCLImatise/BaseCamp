class: CommandLineTool
id: MentaLiST.jl_db_info.cwl
inputs:
- id: in_db
  doc: MentaLiST kmer database
  type: string?
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MentaLiST.jl
- db_info
