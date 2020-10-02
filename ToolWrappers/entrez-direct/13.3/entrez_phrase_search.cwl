class: CommandLineTool
id: entrez_phrase_search.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- entrez-phrase-search
