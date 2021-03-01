class: CommandLineTool
id: PgSAgen.cwl
inputs:
- id: in_kmer_length
  doc: kmer length
  type: long?
  inputBinding:
    prefix: -k
- id: in_cache_file
  doc: cache file
  type: File?
  inputBinding:
    prefix: -c
- id: in_pg_no_sa
  doc: Pg, no SA
  type: string?
  inputBinding:
    prefix: -p
- id: in_use_after_generation
  doc: (use after generation)
  type: string?
  inputBinding:
    prefix: -v
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_reads_srcfile
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pair_srcfile
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_index_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- PgSAgen
