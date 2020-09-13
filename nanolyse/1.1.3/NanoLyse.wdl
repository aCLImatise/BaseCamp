version 1.0

task NanoLyse {
  input {
    File? reference
    File? log_file
    Boolean? v
  }
  command <<<
    NanoLyse \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    reference: "Specify a reference fasta file against which to filter."
    log_file: "Specify the path and filename for the log file."
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}