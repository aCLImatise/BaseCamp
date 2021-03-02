version 1.0

task NanoLyse {
  input {
    File? summary_in
    File? summary_out
    File? reference
    File? log_file
    Boolean? v
  }
  command <<<
    NanoLyse \
      ~{if defined(summary_in) then ("--summary_in " +  '"' + summary_in + '"') else ""} \
      ~{if defined(summary_out) then ("--summary_out " +  '"' + summary_out + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nanolyse:1.2.0--py_0"
  }
  parameter_meta {
    summary_in: "Summary file to filter"
    summary_out: "with --summary_in: name of output file."
    reference: "Specify a fasta file against which to filter. Standard is DNA CS."
    log_file: "Specify the path and filename for the log file."
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_summary_out = "${in_summary_out}"
  }
}