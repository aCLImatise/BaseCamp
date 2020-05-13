class: CommandLineTool
id: sina.cwl
inputs:
- id: h
  doc: '[ --help-all ]        show full help (long)'
  type: boolean
  inputBinding:
    prefix: -H
- id: i
  doc: '[ --in ] arg (="-")   input file (arb or fasta)'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[ --out ] arg (="")   output file (arb or fasta)'
  type: boolean
  inputBinding:
    prefix: -o
- id: add_relatives
  doc: add the ARG nearest relatives for each sequence to  output
  type: string
  inputBinding:
    prefix: --add-relatives
- id: s
  doc: '[ --search ]          enable search stage'
  type: boolean
  inputBinding:
    prefix: -S
- id: p
  doc: '[ --prealigned ]      skip alignment stage'
  type: boolean
  inputBinding:
    prefix: -P
- id: p
  doc: '[ --threads ] arg     limit number of threads (automatic)'
  type: boolean
  inputBinding:
    prefix: -p
- id: num_pts
  doc: (=8)       number of PT servers to start
  type: string
  inputBinding:
    prefix: --num-pts
- id: v
  doc: '[ --version ]         show version'
  type: boolean
  inputBinding:
    prefix: -V
- id: v
  doc: '[ --verbose ]         increase verbosity'
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: '[ --quiet ]           decrease verbosity'
  type: boolean
  inputBinding:
    prefix: -q
- id: log_file
  doc: file to write log to
  type: string
  inputBinding:
    prefix: --log-file
- id: meta_fmt
  doc: meta data in (*none*|header|comment|csv)
  type: string
  inputBinding:
    prefix: --meta-fmt
- id: r
  doc: '[ --db ] arg          reference database'
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: "[ --turn ] arg        check other strand as well 'all' checks all four frames"
  type: boolean
  inputBinding:
    prefix: -t
- id: fs_engine
  doc: search engine to use for reference selection  [*pt-server*|internal]
  type: string
  inputBinding:
    prefix: --fs-engine
- id: fs_km_er_len
  doc: length of k-mers (10)
  type: string
  inputBinding:
    prefix: --fs-kmer-len
- id: fs_req
  doc: required number of reference sequences (1) queries with less matches will be
    dropped
  type: string
  inputBinding:
    prefix: --fs-req
- id: fs_min
  doc: number of references used regardless of shared  fraction (40)
  type: string
  inputBinding:
    prefix: --fs-min
- id: fs_max
  doc: number of references used at most (40)
  type: string
  inputBinding:
    prefix: --fs-max
- id: fs_msc
  doc: required fractional identity of references (0.7)
  type: string
  inputBinding:
    prefix: --fs-msc
- id: fs_req_full
  doc: required number of full length references (1)
  type: string
  inputBinding:
    prefix: --fs-req-full
- id: fs_full_len
  doc: minimum length of full length reference (1400)
  type: string
  inputBinding:
    prefix: --fs-full-len
- id: fs_req_gaps
  doc: ignore references with less internal gaps (10)
  type: string
  inputBinding:
    prefix: --fs-req-gaps
- id: fs_min_len
  doc: minimal reference length (150)
  type: string
  inputBinding:
    prefix: --fs-min-len
- id: search_db
  doc: reference db if different from -r/--db
  type: string
  inputBinding:
    prefix: --search-db
- id: search_engine
  doc: engine if different from --fs-engine
  type: string
  inputBinding:
    prefix: --search-engine
- id: search_min_sim
  doc: required sequence similarity (0.7)
  type: string
  inputBinding:
    prefix: --search-min-sim
- id: search_max_result
  doc: desired number of search results (10)
  type: string
  inputBinding:
    prefix: --search-max-result
- id: lca_fields
  doc: names of fields containing source taxonomy (colon  separated list)
  type: string
  inputBinding:
    prefix: --lca-fields
- id: lca_quorum
  doc: fraction of search result that must share resulting  classification (0.7)
  type: string
  inputBinding:
    prefix: --lca-quorum
outputs: []
cwlVersion: v1.1
baseCommand:
- sina
