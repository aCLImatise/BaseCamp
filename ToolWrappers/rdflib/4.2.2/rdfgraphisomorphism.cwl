class: CommandLineTool
id: rdfgraphisomorphism.cwl
inputs:
- id: in_stdin
  doc: Load from STDIN as well
  type: boolean
  inputBinding:
    prefix: --stdin
- id: in_format
  doc: "The format of the RDF document(s) to compareOne of\n'xml','n3','trix', 'nt',\
    \ or 'rdfa'.  The default is xml\n"
  type: long
  inputBinding:
    prefix: --format
- id: in_file_n
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rdfgraphisomorphism
