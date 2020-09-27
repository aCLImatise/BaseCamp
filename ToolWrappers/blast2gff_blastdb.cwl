class: CommandLineTool
id: blast2gff_blastdb.cwl
inputs:
- id: in_verbose
  doc: "-db, --db-used TEXT         blastdb used  [default: NCBI-NT]\n-n, --no-split\
    \              if used, the script assumes that the sequence\nheader will be used\
    \ as gene_id\n-s, --header-sep TEXT       The separator for the header, defaults\
    \ to '|'\n(pipe)  [default: |]\n-i, --gene-index INTEGER    Which of the header\
    \ columns (0-based) to use as\ngene_id (defaults to 1 - the second column)\n[default:\
    \ 1]\n-r, --remove-version        if used, the script removes the *version*\n\
    information from the gene_id\n-a, --fasta-file PATH       Optional FASTA file\
    \ with the query sequences\n-dbq, --db-quality INTEGER  Quality of the DB used\
    \  [default: 10]\n-b, --bitscore FLOAT        Minimum bitscore to keep the annotation\n\
    [default: 0.0]\n-k, --attr-value TEXT       Additional attribute and value to\
    \ add to each\nannotation, in the form attr:value\n-ft, --feat-type TEXT     \
    \  Feature type to use in the GFF  [default: CDS]\n--progress                \
    \  Shows Progress Bar\n--help                      Show this message and exit.\n"
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
- blastdb
