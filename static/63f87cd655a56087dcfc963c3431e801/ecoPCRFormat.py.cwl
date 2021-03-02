class: CommandLineTool
id: ecoPCRFormat.py.cwl
inputs:
- id: in_embl
  doc: :[E]mbl format
  type: boolean?
  inputBinding:
    prefix: --embl
- id: in_fast_a
  doc: :[F]asta format
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_genbank
  doc: :[G]enbank format
  type: boolean?
  inputBinding:
    prefix: --genbank
- id: in_name
  doc: :[N]ame of the new database created
  type: boolean?
  inputBinding:
    prefix: --name
- id: in_taxonomy
  doc: ":[T]axonomy - path to the taxonomy database\n:bcp-like dump from GenBank taxonomy\
    \ database."
  type: boolean?
  inputBinding:
    prefix: --taxonomy
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ecoPCRFormat.py
