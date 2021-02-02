class: CommandLineTool
id: rnftools_publication_doi.cwl
inputs:
- id: in_rnf_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_publication
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnftools
- publication
- doi
