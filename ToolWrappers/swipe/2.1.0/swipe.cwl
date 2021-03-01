class: CommandLineTool
id: swipe.cwl
inputs:
- id: in_db
  doc: sequence database base name (required)
  type: File?
  inputBinding:
    prefix: --db
- id: in_query
  doc: query sequence filename (stdin)
  type: File?
  inputBinding:
    prefix: --query
- id: in_matrix
  doc: /FILE     score matrix name or filename (BLOSUM62)
  type: File?
  inputBinding:
    prefix: --matrix
- id: in_penalty
  doc: penalty for nucleotide mismatch (-3)
  type: long?
  inputBinding:
    prefix: --penalty
- id: in_reward
  doc: reward for nucleotide match (1)
  type: long?
  inputBinding:
    prefix: --reward
- id: in_gap_open
  doc: gap open penalty (11)
  type: long?
  inputBinding:
    prefix: --gapopen
- id: in_gap_extend
  doc: gap extension penalty (1)
  type: long?
  inputBinding:
    prefix: --gapextend
- id: in_num_descriptions
  doc: sequence descriptions to show (250)
  type: long?
  inputBinding:
    prefix: --num_descriptions
- id: in_num_alignments
  doc: sequence alignments to show (100)
  type: long?
  inputBinding:
    prefix: --num_alignments
- id: in_evalue
  doc: maximum expect value of sequences to show (10.0)
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_mine_value
  doc: minimum expect value of sequences to show (0.0)
  type: double?
  inputBinding:
    prefix: --minevalue
- id: in_min_score
  doc: minimum score of sequences to show (1)
  type: long?
  inputBinding:
    prefix: --min_score
- id: in_max_score
  doc: maximum score of sequences to show (inf.)
  type: long?
  inputBinding:
    prefix: --max_score
- id: in_num_threads
  doc: number of threads to use [1-256] (1)
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_out_fmt
  doc: output format [0,7-9=plain,xml,tsv,tsv+] (0)
  type: long?
  inputBinding:
    prefix: --outfmt
- id: in_show_gis
  doc: show gi numbers in results (no)
  type: boolean?
  inputBinding:
    prefix: --show_gis
- id: in_sym_type
  doc: /NUM     symbol type/translation [0-4] (1)
  type: long?
  inputBinding:
    prefix: --symtype
- id: in_strand
  doc: /NUM      query strands to search [1-3] (3)
  type: long?
  inputBinding:
    prefix: --strand
- id: in_query_gen_code
  doc: query genetic code [1-23] (1)
  type: long?
  inputBinding:
    prefix: --query_gencode
- id: in_db_gen_code
  doc: database genetic code [1-23] (1)
  type: long?
  inputBinding:
    prefix: --db_gencode
- id: in_taxid_list
  doc: taxid list filename (none)
  type: File?
  inputBinding:
    prefix: --taxidlist
- id: in_dump
  doc: dump database [0-2=no,yes,split headers] (0)
  type: long?
  inputBinding:
    prefix: --dump
- id: in_show_taxid
  doc: show taxid etc in results (no)
  type: boolean?
  inputBinding:
    prefix: --show_taxid
- id: in_out
  doc: output file (stdout)
  type: File?
  inputBinding:
    prefix: --out
- id: in_db_size
  doc: set effective database size (0)
  type: long?
  inputBinding:
    prefix: --dbsize
- id: in_two_two_one_dot
  doc: 'Usage: swipe [OPTIONS]'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file (stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- swipe
