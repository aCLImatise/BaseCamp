class: CommandLineTool
id: ecoPCRFormat.py.cwl
inputs:
- id: in__embl_mbl
  doc: --embl        :[E]mbl format
  type: boolean
  inputBinding:
    prefix: -e
- id: in__fasta_format
  doc: --fasta       :[F]asta format
  type: boolean
  inputBinding:
    prefix: -f
- id: in__genbank_format
  doc: --genbank     :[G]enbank format
  type: boolean
  inputBinding:
    prefix: -g
- id: in__name_ame
  doc: --name        :[N]ame of the new database created
  type: boolean
  inputBinding:
    prefix: -n
- id: in__taxonomy_path
  doc: "--taxonomy    :[T]axonomy - path to the taxonomy database\n:bcp-like dump\
    \ from GenBank taxonomy database."
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ecoPCRFormat.py
