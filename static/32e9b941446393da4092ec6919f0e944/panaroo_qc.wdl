version 1.0

task Panarooqc {
  input {
    Int? threads
    String? graph_type
    String? ref_db
    Array[String] input_files_output
    Directory? out_dir
    String quantification_dot
  }
  command <<<
    panaroo_qc \
      ~{quantification_dot} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(graph_type) then ("--graph_type " +  '"' + graph_type + '"') else ""} \
      ~{if defined(ref_db) then ("--ref_db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(input_files_output) then ("--input " +  '"' + input_files_output + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "number of threads to use (default=1)"
    graph_type: "the type of graph to generate (default='all')"
    ref_db: "reference mash database for contamination"
    input_files_output: "input GFF3 files (usually output from running Prokka)"
    out_dir: "location of an output directory\\n"
    quantification_dot: "--version             show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}