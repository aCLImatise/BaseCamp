class: CommandLineTool
id: swipe.cwl
inputs:
- id: db
  doc: sequence database base name (required)
  type: File
  inputBinding:
    prefix: --db
- id: query
  doc: query sequence filename (stdin)
  type: File
  inputBinding:
    prefix: --query
- id: matrix
  doc: /FILE     score matrix name or filename (BLOSUM62)
  type: string
  inputBinding:
    prefix: --matrix
- id: penalty
  doc: penalty for nucleotide mismatch (-3)
  type: string
  inputBinding:
    prefix: --penalty
- id: reward
  doc: reward for nucleotide match (1)
  type: string
  inputBinding:
    prefix: --reward
- id: gap_open
  doc: gap open penalty (11)
  type: string
  inputBinding:
    prefix: --gapopen
- id: gap_extend
  doc: gap extension penalty (1)
  type: string
  inputBinding:
    prefix: --gapextend
- id: num_descriptions
  doc: sequence descriptions to show (250)
  type: string
  inputBinding:
    prefix: --num_descriptions
- id: num_alignments
  doc: sequence alignments to show (100)
  type: string
  inputBinding:
    prefix: --num_alignments
- id: evalue
  doc: maximum expect value of sequences to show (10.0)
  type: string
  inputBinding:
    prefix: --evalue
- id: mine_value
  doc: minimum expect value of sequences to show (0.0)
  type: string
  inputBinding:
    prefix: --minevalue
- id: min_score
  doc: minimum score of sequences to show (1)
  type: string
  inputBinding:
    prefix: --min_score
- id: max_score
  doc: maximum score of sequences to show (inf.)
  type: string
  inputBinding:
    prefix: --max_score
- id: num_threads
  doc: number of threads to use [1-256] (1)
  type: string
  inputBinding:
    prefix: --num_threads
- id: out_fmt
  doc: output format [0,7-9=plain,xml,tsv,tsv+] (0)
  type: string
  inputBinding:
    prefix: --outfmt
- id: show_gis
  doc: show gi numbers in results (no)
  type: boolean
  inputBinding:
    prefix: --show_gis
- id: sym_type
  doc: /NUM     symbol type/translation [0-4] (1)
  type: string
  inputBinding:
    prefix: --symtype
- id: strand
  doc: /NUM      query strands to search [1-3] (3)
  type: string
  inputBinding:
    prefix: --strand
- id: query_gen_code
  doc: query genetic code [1-23] (1)
  type: string
  inputBinding:
    prefix: --query_gencode
- id: db_gen_code
  doc: database genetic code [1-23] (1)
  type: string
  inputBinding:
    prefix: --db_gencode
- id: taxid_list
  doc: taxid list filename (none)
  type: File
  inputBinding:
    prefix: --taxidlist
- id: dump
  doc: dump database [0-2=no,yes,split headers] (0)
  type: string
  inputBinding:
    prefix: --dump
- id: show_taxid
  doc: show taxid etc in results (no)
  type: boolean
  inputBinding:
    prefix: --show_taxid
- id: out
  doc: output file (stdout)
  type: File
  inputBinding:
    prefix: --out
- id: db_size
  doc: set effective database size (0)
  type: string
  inputBinding:
    prefix: --dbsize
outputs: []
cwlVersion: v1.1
baseCommand:
- swipe
