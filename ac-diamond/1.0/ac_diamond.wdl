version 1.0

task AcDiamond {
  input {
    Boolean? arg_number_cpu
    Boolean? arg_database_file
    Boolean? arg_acdiamond_alignment
    Boolean? _enable_verbose
    Boolean? log
    String? in
    Boolean? arg_reference_sequence
    Boolean? sensitive
    Boolean? arg_query_size
    Boolean? arg_input_query
    Boolean? arg_maximum_number
    String? top
    String? compress
    Boolean? arg_maximum_evalue
    String? min_score
    String? id
    Boolean? arg_devshm_directory
    String? gap_open
    String? gap_extend
    String? matrix
    String? seg
    Boolean? arg_window_size
    String? x_drop
    Boolean? arg_xdrop_gapped
    String? un_gapped_score
    String? hit_band
    String? hit_score
    String? band
    String? index_mode
    String? fetch_size
    Boolean? single_domain
    Boolean? arg_output_file
    Boolean? arg_tab_output
    Boolean? forward_only
    String view
  }
  command <<<
    ac-diamond \
      ~{view} \
      ~{true="-p" false="" arg_number_cpu} \
      ~{true="-d" false="" arg_database_file} \
      ~{true="-a" false="" arg_acdiamond_alignment} \
      ~{true="-v" false="" _enable_verbose} \
      ~{true="--log" false="" log} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{true="-b" false="" arg_reference_sequence} \
      ~{true="--sensitive" false="" sensitive} \
      ~{true="-z" false="" arg_query_size} \
      ~{true="-q" false="" arg_input_query} \
      ~{true="-k" false="" arg_maximum_number} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(compress) then ("--compress " +  '"' + compress + '"') else ""} \
      ~{true="-e" false="" arg_maximum_evalue} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{true="-t" false="" arg_devshm_directory} \
      ~{if defined(gap_open) then ("--gapopen " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gapextend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(seg) then ("--seg " +  '"' + seg + '"') else ""} \
      ~{true="-w" false="" arg_window_size} \
      ~{if defined(x_drop) then ("--xdrop " +  '"' + x_drop + '"') else ""} \
      ~{true="-X" false="" arg_xdrop_gapped} \
      ~{if defined(un_gapped_score) then ("--ungapped-score " +  '"' + un_gapped_score + '"') else ""} \
      ~{if defined(hit_band) then ("--hit-band " +  '"' + hit_band + '"') else ""} \
      ~{if defined(hit_score) then ("--hit-score " +  '"' + hit_score + '"') else ""} \
      ~{if defined(band) then ("--band " +  '"' + band + '"') else ""} \
      ~{if defined(index_mode) then ("--index-mode " +  '"' + index_mode + '"') else ""} \
      ~{if defined(fetch_size) then ("--fetch-size " +  '"' + fetch_size + '"') else ""} \
      ~{true="--single-domain" false="" single_domain} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-f" false="" arg_tab_output} \
      ~{true="--forwardonly" false="" forward_only}
  >>>
  parameter_meta {
    arg_number_cpu: "[ --threads ] arg (=0) number of cpu threads"
    arg_database_file: "[ --db ] arg           database file"
    arg_acdiamond_alignment: "[ --daa ] arg          AC-DIAMOND alignment archive (DAA) file"
    _enable_verbose: "[ --verbose ]          enable verbose out"
    log: "enable debug log"
    in: "input reference file in FASTA format"
    arg_reference_sequence: "[ --block-size ] arg reference sequence block size in billions of letters  (default=4)"
    sensitive: "enable building index for sensitive mode  (default:fast)"
    arg_query_size: "[ --query-block-size ] arg (=6) query sequence block size in billions of  letters (default=6)"
    arg_input_query: "[ --query ] arg                 input query file"
    arg_maximum_number: "[ --max-target-seqs ] arg (=25) maximum number of target sequences to  report alignments for"
    top: "(=100)                   report alignments within this percentage  range of top alignment score (overrides  --max-target-seqs)"
    compress: "(=0)                compression for output files (0=none,  1=gzip)"
    arg_maximum_evalue: "[ --evalue ] arg (=0.001)       maximum e-value to report alignments"
    min_score: "(=0)               minimum bit score to report alignments  (overrides e-value setting)"
    id: "(=0)                      minimum identity% to report an alignment"
    arg_devshm_directory: "[ --tmpdir ] arg (=/dev/shm)    directory for temporary files"
    gap_open: "(=-1)                gap open penalty, -1=default (11 for  protein)"
    gap_extend: "(=-1)              gap extension penalty, -1=default (1 for  protein)"
    matrix: "(=blosum62)           score matrix for protein alignment"
    seg: "enable SEG masking of queries (yes/no)"
    arg_window_size: "[ --window ] arg (=0)        window size for local hit search"
    x_drop: "(=20)               xdrop for ungapped alignment"
    arg_xdrop_gapped: "[ --gapped-xdrop ] arg (=20) xdrop for gapped alignment in bits"
    un_gapped_score: "(=0)       minimum raw alignment score to continue local extension"
    hit_band: "(=0)             band for hit verification"
    hit_score: "(=0)            minimum score to keep a tentative alignment"
    band: "(=0)                 band for dynamic programming computation"
    index_mode: "(=0)           index mode (1=10x1, 2=10x8)"
    fetch_size: "(=4096)        trace point fetch size"
    single_domain: "Discard secondary domains within one target  sequence"
    arg_output_file: "[ --out ] arg           output file"
    arg_tab_output: "[ --outfmt ] arg (=tab) output format (tab/sam)"
    forward_only: "only show alignments of forward strand"
    view: "View AC-DIAMOND alignment archive (DAA) formatted file"
  }
}