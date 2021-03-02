version 1.0

task Acdiamond {
  input {
    Boolean? arg_number_cpu
    Boolean? arg_database_file
    Boolean? arg_acdiamond_alignment
    Boolean? _enable_verbose
    Boolean? log
    File? in
    Boolean? arg_reference_sequence
    Boolean? sensitive
    Boolean? arg_query_sequence
    Boolean? arg_input_query
    Boolean? arg_maximum_number
    Int? top
    Int? compress
    Boolean? arg_maximum_evalue
    Int? min_score
    Int? id
    Boolean? arg_devshm_directory
    Int? gap_open
    Int? gap_extend
    Int? matrix
    String? seg
    Boolean? arg_window_size
    Int? x_drop
    Boolean? arg_xdrop_gapped
    Int? un_gapped_score
    Int? hit_score
    Int? band
    Int? index_mode
    Int? fetch_size
    Boolean? single_domain
    File? arg_output_file
    Boolean? arg_tab_output
    Boolean? forward_only
    String make_db
    String view
    String extension
    String sequence
  }
  command <<<
    ac_diamond \
      ~{make_db} \
      ~{view} \
      ~{extension} \
      ~{sequence} \
      ~{if (arg_number_cpu) then "-p" else ""} \
      ~{if (arg_database_file) then "-d" else ""} \
      ~{if (arg_acdiamond_alignment) then "-a" else ""} \
      ~{if (_enable_verbose) then "-v" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if (arg_reference_sequence) then "-b" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (arg_query_sequence) then "-z" else ""} \
      ~{if (arg_input_query) then "-q" else ""} \
      ~{if (arg_maximum_number) then "-k" else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(compress) then ("--compress " +  '"' + compress + '"') else ""} \
      ~{if (arg_maximum_evalue) then "-e" else ""} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if (arg_devshm_directory) then "-t" else ""} \
      ~{if defined(gap_open) then ("--gapopen " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gapextend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(seg) then ("--seg " +  '"' + seg + '"') else ""} \
      ~{if (arg_window_size) then "-w" else ""} \
      ~{if defined(x_drop) then ("--xdrop " +  '"' + x_drop + '"') else ""} \
      ~{if (arg_xdrop_gapped) then "-X" else ""} \
      ~{if defined(un_gapped_score) then ("--ungapped-score " +  '"' + un_gapped_score + '"') else ""} \
      ~{if defined(hit_score) then ("--hit-score " +  '"' + hit_score + '"') else ""} \
      ~{if defined(band) then ("--band " +  '"' + band + '"') else ""} \
      ~{if defined(index_mode) then ("--index-mode " +  '"' + index_mode + '"') else ""} \
      ~{if defined(fetch_size) then ("--fetch-size " +  '"' + fetch_size + '"') else ""} \
      ~{if (single_domain) then "--single-domain" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_tab_output) then "-f" else ""} \
      ~{if (forward_only) then "--forwardonly" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_number_cpu: "[ --threads ] arg (=0) number of cpu threads"
    arg_database_file: "[ --db ] arg           database file"
    arg_acdiamond_alignment: "[ --daa ] arg          AC-DIAMOND alignment archive (DAA) file"
    _enable_verbose: "[ --verbose ]          enable verbose out"
    log: "enable debug log"
    in: "input reference file in FASTA format"
    arg_reference_sequence: "[ --block-size ] arg reference sequence block size in billions of letters\\n(default=4)"
    sensitive: "enable building index for sensitive mode\\n(default:fast)"
    arg_query_sequence: "[ --query-block-size ] arg (=6) query sequence block size in billions of\\nletters (default=6)"
    arg_input_query: "[ --query ] arg                 input query file"
    arg_maximum_number: "[ --max-target-seqs ] arg (=25) maximum number of target sequences to\\nreport alignments for"
    top: "(=100)                   report alignments within this percentage\\nrange of top alignment score (overrides\\n--max-target-seqs)"
    compress: "(=0)                compression for output files (0=none,\\n1=gzip)"
    arg_maximum_evalue: "[ --evalue ] arg (=0.001)       maximum e-value to report alignments"
    min_score: "(=0)               minimum bit score to report alignments\\n(overrides e-value setting)"
    id: "(=0)                      minimum identity% to report an alignment"
    arg_devshm_directory: "[ --tmpdir ] arg (=/dev/shm)    directory for temporary files"
    gap_open: "(=-1)                gap open penalty, -1=default (11 for\\nprotein)"
    gap_extend: "(=-1)              gap extension penalty, -1=default (1 for\\nprotein)"
    matrix: "(=blosum62)           score matrix for protein alignment"
    seg: "enable SEG masking of queries (yes/no)"
    arg_window_size: "[ --window ] arg (=0)        window size for local hit search"
    x_drop: "(=20)               xdrop for ungapped alignment"
    arg_xdrop_gapped: "[ --gapped-xdrop ] arg (=20) xdrop for gapped alignment in bits"
    un_gapped_score: "(=0)       minimum raw alignment score to continue local"
    hit_score: "(=0)            minimum score to keep a tentative alignment"
    band: "(=0)                 band for dynamic programming computation"
    index_mode: "(=0)           index mode (1=10x1, 2=10x8)"
    fetch_size: "(=4096)        trace point fetch size"
    single_domain: "Discard secondary domains within one target"
    arg_output_file: "[ --out ] arg           output file"
    arg_tab_output: "[ --outfmt ] arg (=tab) output format (tab/sam)"
    forward_only: "only show alignments of forward strand"
    make_db: "Build AC-DIAMOND database from a FASTA file"
    view: "View AC-DIAMOND alignment archive (DAA) formatted file"
    extension: "--hit-band arg (=0)             band for hit verification"
    sequence: "View options:"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}