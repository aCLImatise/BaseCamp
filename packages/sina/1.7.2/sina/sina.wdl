version 1.0

task Sina {
  input {
    Boolean? show_full_help
    Boolean? arg_input_file
    File? arg_output_file
    String? add_relatives
    Boolean? skip_alignment_stage
    Boolean? arg_limit_number
    Int? num_pts
    Boolean? _show_version
    Boolean? _increase_verbosity
    Boolean? _decrease_verbosity
    File? log_file
    String? meta_fmt
    Boolean? arg_reference_database
    Boolean? arg_check_strand
    String? fs_engine
    Int? fs_km_er_len
    Int? fs_req
    Int? fs_min
    Int? fs_max
    Float? fs_msc
    Int? fs_req_full
    Int? fs_full_len
    Int? fs_req_gaps
    Int? fs_min_len
    String? search_db
    String? search_engine
    Int? search_min_sim
    Int? search_max_result
    String? lca_fields
    Float? lca_quorum
    String s_enable_stage
  }
  command <<<
    sina \
      ~{s_enable_stage} \
      ~{if (show_full_help) then "-H" else ""} \
      ~{if (arg_input_file) then "-i" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if defined(add_relatives) then ("--add-relatives " +  '"' + add_relatives + '"') else ""} \
      ~{if (skip_alignment_stage) then "-P" else ""} \
      ~{if (arg_limit_number) then "-p" else ""} \
      ~{if defined(num_pts) then ("--num-pts " +  '"' + num_pts + '"') else ""} \
      ~{if (_show_version) then "-V" else ""} \
      ~{if (_increase_verbosity) then "-v" else ""} \
      ~{if (_decrease_verbosity) then "-q" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(meta_fmt) then ("--meta-fmt " +  '"' + meta_fmt + '"') else ""} \
      ~{if (arg_reference_database) then "-r" else ""} \
      ~{if (arg_check_strand) then "-t" else ""} \
      ~{if defined(fs_engine) then ("--fs-engine " +  '"' + fs_engine + '"') else ""} \
      ~{if defined(fs_km_er_len) then ("--fs-kmer-len " +  '"' + fs_km_er_len + '"') else ""} \
      ~{if defined(fs_req) then ("--fs-req " +  '"' + fs_req + '"') else ""} \
      ~{if defined(fs_min) then ("--fs-min " +  '"' + fs_min + '"') else ""} \
      ~{if defined(fs_max) then ("--fs-max " +  '"' + fs_max + '"') else ""} \
      ~{if defined(fs_msc) then ("--fs-msc " +  '"' + fs_msc + '"') else ""} \
      ~{if defined(fs_req_full) then ("--fs-req-full " +  '"' + fs_req_full + '"') else ""} \
      ~{if defined(fs_full_len) then ("--fs-full-len " +  '"' + fs_full_len + '"') else ""} \
      ~{if defined(fs_req_gaps) then ("--fs-req-gaps " +  '"' + fs_req_gaps + '"') else ""} \
      ~{if defined(fs_min_len) then ("--fs-min-len " +  '"' + fs_min_len + '"') else ""} \
      ~{if defined(search_db) then ("--search-db " +  '"' + search_db + '"') else ""} \
      ~{if defined(search_engine) then ("--search-engine " +  '"' + search_engine + '"') else ""} \
      ~{if defined(search_min_sim) then ("--search-min-sim " +  '"' + search_min_sim + '"') else ""} \
      ~{if defined(search_max_result) then ("--search-max-result " +  '"' + search_max_result + '"') else ""} \
      ~{if defined(lca_fields) then ("--lca-fields " +  '"' + lca_fields + '"') else ""} \
      ~{if defined(lca_quorum) then ("--lca-quorum " +  '"' + lca_quorum + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sina:1.7.2--h9aa86b4_0"
  }
  parameter_meta {
    show_full_help: "[ --help-all ]        show full help (long)"
    arg_input_file: "[ --in ] arg (=\\\"-\\\")   input file (arb or fasta)"
    arg_output_file: "[ --out ] arg         output file (arb, fasta or csv; may be specified\\nmultiple times)"
    add_relatives: "add the ARG nearest relatives for each sequence to"
    skip_alignment_stage: "[ --prealigned ]      skip alignment stage"
    arg_limit_number: "[ --threads ] arg     limit number of threads (automatic)"
    num_pts: "(=8)       number of PT servers to start"
    _show_version: "[ --version ]         show version"
    _increase_verbosity: "[ --verbose ]         increase verbosity"
    _decrease_verbosity: "[ --quiet ]           decrease verbosity"
    log_file: "file to write log to"
    meta_fmt: "meta data in (*none*|header|comment|csv)"
    arg_reference_database: "[ --db ] arg          reference database"
    arg_check_strand: "[ --turn ] arg        check other strand as well\\n'all' checks all four frames"
    fs_engine: "search engine to use for reference selection\\n[*pt-server*|internal]"
    fs_km_er_len: "length of k-mers (10)"
    fs_req: "required number of reference sequences (1)\\nqueries with less matches will be dropped"
    fs_min: "number of references used regardless of shared\\nfraction (40)"
    fs_max: "number of references used at most (40)"
    fs_msc: "required fractional identity of references (0.7)"
    fs_req_full: "required number of full length references (1)"
    fs_full_len: "minimum length of full length reference (1400)"
    fs_req_gaps: "ignore references with less internal gaps (10)"
    fs_min_len: "minimal reference length (150)"
    search_db: "reference db if different from -r/--db"
    search_engine: "engine if different from --fs-engine"
    search_min_sim: "required sequence similarity (0.7)"
    search_max_result: "desired number of search results (10)"
    lca_fields: "names of fields containing source taxonomy (colon\\nseparated list)"
    lca_quorum: "fraction of search result that must share resulting\\nclassification (0.7)\\n"
    s_enable_stage: "-S [ --search ]          enable search stage"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}