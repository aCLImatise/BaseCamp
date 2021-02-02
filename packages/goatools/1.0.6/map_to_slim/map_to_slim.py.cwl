class: CommandLineTool
id: map_to_slim.py.cwl
inputs:
- id: in_term
  doc: "a term (association id) to map to slim IDs. This can\nnot be used together\
    \ with --association_file"
  type: string
  inputBinding:
    prefix: --term
- id: in_association_file
  doc: "the file of protein products and their associations to\nbe mapped to GO slim\
    \ terms. This can not be used\ntogether with --term"
  type: File
  inputBinding:
    prefix: --association_file
- id: in_slim_out
  doc: "One of `direct` or `all`. Defines whether the output\nshould contain all slim\
    \ terms (all ancestors) or only\ndirect slim terms (only direct ancestors)\n"
  type: string
  inputBinding:
    prefix: --slim_out
- id: in_go_obo_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_go_slim_obo_file
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
- map_to_slim.py
