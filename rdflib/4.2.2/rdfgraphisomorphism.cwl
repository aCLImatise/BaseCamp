class: CommandLineTool
id: rdfgraphisomorphism.cwl
inputs:
- id: file_1
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_n
  doc: ''
  type: File
  inputBinding:
    position: 1
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
outputs: []
cwlVersion: v1.1
baseCommand:
- rdfgraphisomorphism
