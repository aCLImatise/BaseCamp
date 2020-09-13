version 1.0

task PhyluceAssemblyGetFastasFromMatchCounts {
  input {
    String? locus_db
    Boolean? var_1
    String? var_output
    Directory? contigs
    File? incomplete_matrix
    String? verbosity
    File? log_path
    File? extend_locus_db
    Directory? extend_locus_contigs
    String var_9
  }
  command <<<
    phyluce_assembly_get_fastas_from_match_counts \
      ~{var_9} \
      ~{if defined(locus_db) then ("--locus-db " +  '"' + locus_db + '"') else ""} \
      ~{if (var_1) then "--match-count-output" else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(incomplete_matrix) then ("--incomplete-matrix " +  '"' + incomplete_matrix + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(extend_locus_db) then ("--extend-locus-db " +  '"' + extend_locus_db + '"') else ""} \
      ~{if defined(extend_locus_contigs) then ("--extend-locus-contigs " +  '"' + extend_locus_contigs + '"') else ""}
  >>>
  parameter_meta {
    locus_db: ""
    var_1: ""
    var_output: ""
    contigs: "The directory containing the assembled contigs in\\nwhich you searched for UCE loci. (default: None)"
    incomplete_matrix: "The path to the outfile for incomplete-matrix records.\\nRequired when processing an incomplete data matrix.\\n(default: False)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    extend_locus_db: "An SQLlite database file holding probe matches to\\nother targeted loci. (default: None)"
    extend_locus_contigs: "A directory holding the assembled contigs (from\\ngenomes or another study) referenced by --extend-\\nlocus-db. (default: None)\\n"
    var_9: "[--incomplete-matrix INCOMPLETE_MATRIX]"
  }
  output {
    File out_stdout = stdout()
  }
}