class: CommandLineTool
id: clustal2link.cwl
inputs:
- id: in_aln
  doc: ''
  type: string?
  inputBinding:
    prefix: -aln
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- clustal2link
