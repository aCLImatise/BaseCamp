class: CommandLineTool
id: ac_diamond.cwl
inputs:
- id: in_arg_number_cpu
  doc: '[ --threads ] arg (=0) number of cpu threads'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_database_file
  doc: '[ --db ] arg           database file'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_acdiamond_alignment
  doc: '[ --daa ] arg          AC-DIAMOND alignment archive (DAA) file'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in__enable_verbose
  doc: '[ --verbose ]          enable verbose out'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_log
  doc: enable debug log
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_in
  doc: input reference file in FASTA format
  type: File?
  inputBinding:
    prefix: --in
- id: in_arg_reference_sequence
  doc: "[ --block-size ] arg reference sequence block size in billions of letters\n\
    (default=4)"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_sensitive
  doc: "enable building index for sensitive mode\n(default:fast)"
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_arg_query_sequence
  doc: "[ --query-block-size ] arg (=6) query sequence block size in billions of\n\
    letters (default=6)"
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_arg_input_query
  doc: '[ --query ] arg                 input query file'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_maximum_number
  doc: "[ --max-target-seqs ] arg (=25) maximum number of target sequences to\nreport\
    \ alignments for"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_top
  doc: "(=100)                   report alignments within this percentage\nrange of\
    \ top alignment score (overrides\n--max-target-seqs)"
  type: long?
  inputBinding:
    prefix: --top
- id: in_compress
  doc: "(=0)                compression for output files (0=none,\n1=gzip)"
  type: long?
  inputBinding:
    prefix: --compress
- id: in_arg_maximum_evalue
  doc: '[ --evalue ] arg (=0.001)       maximum e-value to report alignments'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_min_score
  doc: "(=0)               minimum bit score to report alignments\n(overrides e-value\
    \ setting)"
  type: long?
  inputBinding:
    prefix: --min-score
- id: in_id
  doc: (=0)                      minimum identity% to report an alignment
  type: long?
  inputBinding:
    prefix: --id
- id: in_arg_devshm_directory
  doc: '[ --tmpdir ] arg (=/dev/shm)    directory for temporary files'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_gap_open
  doc: "(=-1)                gap open penalty, -1=default (11 for\nprotein)"
  type: long?
  inputBinding:
    prefix: --gapopen
- id: in_gap_extend
  doc: "(=-1)              gap extension penalty, -1=default (1 for\nprotein)"
  type: long?
  inputBinding:
    prefix: --gapextend
- id: in_matrix
  doc: (=blosum62)           score matrix for protein alignment
  type: long?
  inputBinding:
    prefix: --matrix
- id: in_seg
  doc: enable SEG masking of queries (yes/no)
  type: string?
  inputBinding:
    prefix: --seg
- id: in_arg_window_size
  doc: '[ --window ] arg (=0)        window size for local hit search'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_x_drop
  doc: (=20)               xdrop for ungapped alignment
  type: long?
  inputBinding:
    prefix: --xdrop
- id: in_arg_xdrop_gapped
  doc: '[ --gapped-xdrop ] arg (=20) xdrop for gapped alignment in bits'
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_un_gapped_score
  doc: (=0)       minimum raw alignment score to continue local
  type: long?
  inputBinding:
    prefix: --ungapped-score
- id: in_hit_score
  doc: (=0)            minimum score to keep a tentative alignment
  type: long?
  inputBinding:
    prefix: --hit-score
- id: in_band
  doc: (=0)                 band for dynamic programming computation
  type: long?
  inputBinding:
    prefix: --band
- id: in_index_mode
  doc: (=0)           index mode (1=10x1, 2=10x8)
  type: long?
  inputBinding:
    prefix: --index-mode
- id: in_fetch_size
  doc: (=4096)        trace point fetch size
  type: long?
  inputBinding:
    prefix: --fetch-size
- id: in_single_domain
  doc: Discard secondary domains within one target
  type: boolean?
  inputBinding:
    prefix: --single-domain
- id: in_arg_output_file
  doc: '[ --out ] arg           output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_tab_output
  doc: '[ --outfmt ] arg (=tab) output format (tab/sam)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_forward_only
  doc: only show alignments of forward strand
  type: boolean?
  inputBinding:
    prefix: --forwardonly
- id: in_make_db
  doc: Build AC-DIAMOND database from a FASTA file
  type: string
  inputBinding:
    position: 0
- id: in_view
  doc: View AC-DIAMOND alignment archive (DAA) formatted file
  type: string
  inputBinding:
    position: 0
- id: in_extension
  doc: --hit-band arg (=0)             band for hit verification
  type: string
  inputBinding:
    position: 0
- id: in_sequence
  doc: 'View options:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --out ] arg           output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ac-diamond
