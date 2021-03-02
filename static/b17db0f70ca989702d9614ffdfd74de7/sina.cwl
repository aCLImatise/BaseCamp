class: CommandLineTool
id: sina.cwl
inputs:
- id: in_show_full_help
  doc: '[ --help-all ]        show full help (long)'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_arg_input_file
  doc: '[ --in ] arg (="-")   input file (arb or fasta)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_output_file
  doc: '[ --out ] arg (="")   output file (arb or fasta)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_add_relatives
  doc: add the ARG nearest relatives for each sequence to
  type: string?
  inputBinding:
    prefix: --add-relatives
- id: in_skip_alignment_stage
  doc: '[ --prealigned ]      skip alignment stage'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_arg_limit_number
  doc: '[ --threads ] arg     limit number of threads (automatic)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_num_pts
  doc: (=8)       number of PT servers to start
  type: long?
  inputBinding:
    prefix: --num-pts
- id: in__show_version
  doc: '[ --version ]         show version'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in__increase_verbosity
  doc: '[ --verbose ]         increase verbosity'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in__decrease_verbosity
  doc: '[ --quiet ]           decrease verbosity'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_log_file
  doc: file to write log to
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_meta_fmt
  doc: meta data in (*none*|header|comment|csv)
  type: string?
  inputBinding:
    prefix: --meta-fmt
- id: in_arg_reference_database
  doc: '[ --db ] arg          reference database'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_check_strand
  doc: "[ --turn ] arg        check other strand as well\n'all' checks all four frames"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_fs_engine
  doc: "search engine to use for reference selection\n[*pt-server*|internal]"
  type: string?
  inputBinding:
    prefix: --fs-engine
- id: in_fs_km_er_len
  doc: length of k-mers (10)
  type: long?
  inputBinding:
    prefix: --fs-kmer-len
- id: in_fs_req
  doc: "required number of reference sequences (1)\nqueries with less matches will\
    \ be dropped"
  type: long?
  inputBinding:
    prefix: --fs-req
- id: in_fs_min
  doc: "number of references used regardless of shared\nfraction (40)"
  type: long?
  inputBinding:
    prefix: --fs-min
- id: in_fs_max
  doc: number of references used at most (40)
  type: long?
  inputBinding:
    prefix: --fs-max
- id: in_fs_msc
  doc: required fractional identity of references (0.7)
  type: double?
  inputBinding:
    prefix: --fs-msc
- id: in_fs_req_full
  doc: required number of full length references (1)
  type: long?
  inputBinding:
    prefix: --fs-req-full
- id: in_fs_full_len
  doc: minimum length of full length reference (1400)
  type: long?
  inputBinding:
    prefix: --fs-full-len
- id: in_fs_req_gaps
  doc: ignore references with less internal gaps (10)
  type: long?
  inputBinding:
    prefix: --fs-req-gaps
- id: in_fs_min_len
  doc: minimal reference length (150)
  type: long?
  inputBinding:
    prefix: --fs-min-len
- id: in_search_db
  doc: reference db if different from -r/--db
  type: string?
  inputBinding:
    prefix: --search-db
- id: in_search_engine
  doc: engine if different from --fs-engine
  type: string?
  inputBinding:
    prefix: --search-engine
- id: in_search_min_sim
  doc: required sequence similarity (0.7)
  type: long?
  inputBinding:
    prefix: --search-min-sim
- id: in_search_max_result
  doc: desired number of search results (10)
  type: long?
  inputBinding:
    prefix: --search-max-result
- id: in_lca_fields
  doc: "names of fields containing source taxonomy (colon\nseparated list)"
  type: string?
  inputBinding:
    prefix: --lca-fields
- id: in_lca_quorum
  doc: "fraction of search result that must share resulting\nclassification (0.7)\n"
  type: double?
  inputBinding:
    prefix: --lca-quorum
- id: in_output
  doc: -S [ --search ]          enable search stage
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --out ] arg (="")   output file (arb or fasta)'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- sina
