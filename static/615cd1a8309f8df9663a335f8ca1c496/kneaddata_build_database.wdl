version 1.0

task KneaddataBuildDatabase {
  input {
    String? output_prefix
    String? bm_tool_path
    String? sr_prism_path
    String? make_blast_db_path
    String? logdir
    String fast_a
  }
  command <<<
    kneaddata_build_database \
      ~{fast_a} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(bm_tool_path) then ("--bmtool-path " +  '"' + bm_tool_path + '"') else ""} \
      ~{if defined(sr_prism_path) then ("--srprism-path " +  '"' + sr_prism_path + '"') else ""} \
      ~{if defined(make_blast_db_path) then ("--makeblastdb-path " +  '"' + make_blast_db_path + '"') else ""} \
      ~{if defined(logdir) then ("--logdir " +  '"' + logdir + '"') else ""}
  >>>
  parameter_meta {
    output_prefix: "prefix for all output files"
    bm_tool_path: "path to bmtool executable"
    sr_prism_path: "path to srprism executable"
    make_blast_db_path: "path to makeblastdb executable"
    logdir: "location to store log files"
    fast_a: "input FASTA file"
  }
}