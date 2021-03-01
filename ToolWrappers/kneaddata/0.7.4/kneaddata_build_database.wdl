version 1.0

task KneaddataBuildDatabase {
  input {
    String? output_prefix
    File? bm_tool_path
    File? sr_prism_path
    File? make_blast_db_path
    String? logdir
  }
  command <<<
    kneaddata_build_database \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(bm_tool_path) then ("--bmtool-path " +  '"' + bm_tool_path + '"') else ""} \
      ~{if defined(sr_prism_path) then ("--srprism-path " +  '"' + sr_prism_path + '"') else ""} \
      ~{if defined(make_blast_db_path) then ("--makeblastdb-path " +  '"' + make_blast_db_path + '"') else ""} \
      ~{if defined(logdir) then ("--logdir " +  '"' + logdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_prefix: "prefix for all output files"
    bm_tool_path: "path to bmtool executable"
    sr_prism_path: "path to srprism executable"
    make_blast_db_path: "path to makeblastdb executable"
    logdir: "location to store log files\\n"
  }
  output {
    File out_stdout = stdout()
  }
}