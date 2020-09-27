class: CommandLineTool
id: align_families.py.cwl
inputs:
- id: in_read_families_dot_tsv
  doc: "The input reads, sorted into families. One\nline per read pair, 8 tab-delimited\
    \ columns:\n1. canonical barcode\n2. barcode order (\"ab\" for alpha+beta, \"\
    ba\"\nfor beta-alpha)\n3. read 1 name\n4. read 1 sequence\n5. read 1 quality scores\n\
    6. read 2 name\n7. read 2 sequence\n8. read 2 quality scores"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- align-families.py
