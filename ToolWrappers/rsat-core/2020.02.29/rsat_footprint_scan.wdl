version 1.0

task RsatFootprintscan {
  input {
    String? tax_on
    Boolean? bg_file
    String? m
    String? matrix_format
    String? matrix_suffix
    String? all_genes
    Boolean? occ_sig_opt
    Boolean? unique_species
    String footprint_scan
    String eckeckagar
    String eckeckarac
    String result_dot
    String details_dot
    String distributed_dot
    String xy_graph
    String used_dot
    String organisms_dot
    String program_dot
    String incomplete_dot
    String distance_dot
  }
  command <<<
    rsat footprint_scan \
      ~{footprint_scan} \
      ~{eckeckagar} \
      ~{eckeckarac} \
      ~{result_dot} \
      ~{details_dot} \
      ~{distributed_dot} \
      ~{xy_graph} \
      ~{used_dot} \
      ~{organisms_dot} \
      ~{program_dot} \
      ~{incomplete_dot} \
      ~{distance_dot} \
      ~{if defined(tax_on) then ("-taxon " +  '"' + tax_on + '"') else ""} \
      ~{if (bg_file) then "-bgfile" else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(matrix_format) then ("-matrix_format " +  '"' + matrix_format + '"') else ""} \
      ~{if defined(matrix_suffix) then ("-matrix_suffix " +  '"' + matrix_suffix + '"') else ""} \
      ~{if defined(all_genes) then ("-all_genes " +  '"' + all_genes + '"') else ""} \
      ~{if (occ_sig_opt) then "-occ_sig_opt" else ""} \
      ~{if (unique_species) then "-unique_species" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tax_on: "\\"
    bg_file: "${RSAT}/public_html/data/taxon_frequencies/Enterobacteriaceae/dyads_3nt_sp0-20_upstream-noorf_Enterobacteriaceae-noov-1str.freq.gz \\"
    m: "\\"
    matrix_format: "\\"
    matrix_suffix: "\\"
    all_genes: "\\"
    occ_sig_opt: "'-lth score 7'"
    unique_species: ", but at the level of the genus. At this level we"
    footprint_scan: "[1mDESCRIPTION[0m"
    eckeckagar: "ECK12_ECK120012515_AgaR.24"
    eckeckarac: "ECK12_ECK120012316_AraC.18"
    result_dot: "The tutorial could cover the 3 interfaces (command-line, Web services"
    details_dot: "[1m-bgfile background_file[0m"
    distributed_dot: "The background model is calculated locally at each step of the scan,"
    xy_graph: "[1m-scan_opt[0m"
    used_dot: "[1m-batch_matrix [0m"
    organisms_dot: "The file format is one organisms per line, the comment char is \\\";\\\""
    program_dot: "File format: Tab delimited file with three columns.\\nID of the query gene (in the query organism)\\nID of the reference gene\\nID of the reference organism"
    incomplete_dot: "[1m-sep_genes[0m"
    distance_dot: "[1m-dist_thr value[0m"
  }
  output {
    File out_stdout = stdout()
  }
}