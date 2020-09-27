class: CommandLineTool
id: blast2gff_uniprot.cwl
inputs:
- id: in_verbose
  doc: "-db, --db-used TEXT         Uniprot database used with BLAST  [default:\n\
    UNIPROT-SP]\n-n, --no-split              if used, the script assumes that the\
    \ sequence\nheader will be used as gene_id\n-a, --fasta-file PATH       Optional\
    \ FASTA file with the query sequences\n-dbq, --db-quality INTEGER  Quality of\
    \ the DB used  [default: 10]\n-b, --bitscore FLOAT        Minimum bitscore to\
    \ keep the annotation\n[default: 0.0]\n-k, --attr-value TEXT       Additional\
    \ attribute and value to add to each\nannotation, in the form attr:value\n-ft,\
    \ --feat-type TEXT       Feature type to use in the GFF  [default: CDS]\n--progress\
    \                  Shows Progress Bar\n--help                      Show this message\
    \ and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_blast_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gff_file
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
- blast2gff
- uniprot
