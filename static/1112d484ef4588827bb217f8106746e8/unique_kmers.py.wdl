version 1.0

task Uniquekmerspy {
  input {
    Boolean? info
    Int? quiet
    Float? error_rate
    File? report
    Boolean? stream_records
    Boolean? diagnostics
    String input_sequence_filename
  }
  command <<<
    unique_kmers_py \
      ~{input_sequence_filename} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if (stream_records) then "--stream-records" else ""} \
      ~{if (diagnostics) then "--diagnostics" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info: "print citation information"
    quiet: "k-mer size to use (default: 32)"
    error_rate: "Acceptable error rate (default: 0.01)"
    report: "generate informational report and write to filename\\n(default: None)"
    stream_records: "write input sequences to STDOUT (default: False)"
    diagnostics: "print out recommended tablesize arguments and\\nrestrictions (default: False)"
    input_sequence_filename: "Input FAST[AQ] sequence filename(s)."
  }
  output {
    File out_stdout = stdout()
  }
}