class: CommandLineTool
id: ../../../rnftools_publication_doi.cwl
inputs:
- id: rnf_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: publication
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- publication
- doi
