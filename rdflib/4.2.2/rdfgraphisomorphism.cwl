class: CommandLineTool
id: ../../../rdfgraphisomorphism.cwl
inputs:
- id: stdin
  doc: Load from STDIN as well
  type: boolean
  inputBinding:
    prefix: --stdin
- id: format
  doc: The format of the RDF document(s) to compareOne of 'xml','n3','trix', 'nt',
    or 'rdfa'.  The default is xml
  type: string
  inputBinding:
    prefix: --format
- id: file_n
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rdfgraphisomorphism
