class: CommandLineTool
id: overmerry.cwl
inputs:
- id: in_path_to_gkpstore
  doc: path to the gkpStore
  type: File?
  inputBinding:
    prefix: -g
- id: in_mer_size_bases
  doc: mer size in bases
  type: long?
  inputBinding:
    prefix: -m
- id: in_compression_level_homopolymer
  doc: "compression level; homopolymer runs longer than this length\nare compressed\
    \ to exactly this length"
  type: long?
  inputBinding:
    prefix: -c
- id: in_ignore_mers_occuring
  doc: ignore mers occuring more than 'threshold' times
  type: string?
  inputBinding:
    prefix: -T
- id: in_mc
  doc: file of mercounts
  type: File?
  inputBinding:
    prefix: -mc
- id: in_number_compute_threads
  doc: number of compute threads
  type: long?
  inputBinding:
    prefix: -t
- id: in_tb
  doc: hash table fragment IID range
  type: string?
  inputBinding:
    prefix: -tb
- id: in_te
  doc: "hash table fragment IID range\nfragments with IID x, m <= x < n, are used\
    \ for the hash table"
  type: string?
  inputBinding:
    prefix: -te
- id: in_qb
  doc: query fragment IID range (must be >= -tb)
  type: string?
  inputBinding:
    prefix: -qb
- id: in_qe
  doc: "query fragment IID range\nfragments with IID y, M <= y < N, are used for the\
    \ queries"
  type: string?
  inputBinding:
    prefix: -qe
- id: in_entertain_user_progress
  doc: entertain the user with progress reports
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_output_written_here
  doc: output written here
  type: string?
  inputBinding:
    prefix: -o
- id: in_opts
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- overmerry
