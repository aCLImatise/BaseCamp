version 1.0

task UniqueKmers.py {
  input {
    String? k_size
    String? error_rate
    File? report
    Boolean? stream_records
    Boolean? diagnostics
    Boolean? info
    Boolean? q
    String input_sequence_filename
  }
  command <<<
    unique-kmers.py \
      ~{input_sequence_filename} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{true="--stream-records" false="" stream_records} \
      ~{true="--diagnostics" false="" diagnostics} \
      ~{true="--info" false="" info} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    k_size: "k-mer size to use (default: 32)"
    error_rate: "Acceptable error rate (default: 0.01)"
    report: "generate informational report and write to filename (default: None)"
    stream_records: "write input sequences to STDOUT (default: False)"
    diagnostics: "print out recommended tablesize arguments and restrictions (default: False)"
    info: ""
    q: ""
    input_sequence_filename: "Input FAST[AQ] sequence filename(s)."
  }
}