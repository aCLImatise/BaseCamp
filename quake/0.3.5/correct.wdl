version 1.0

task Correct {
  input {
    Boolean? output_errors_reads
    Boolean? headers
    Boolean? log
  }
  command <<<
    correct \
      ~{true="-u" false="" output_errors_reads} \
      ~{true="--headers" false="" headers} \
      ~{true="--log" false="" log}
  >>>
  parameter_meta {
    output_errors_reads: "Output errors reads even if they can't be corrected, maintaining paired end reads."
    headers: "Output only the original read headers without correction messages"
    log: "Output a log of all corrections into *.log as 'quality position new_nt old_nt'"
  }
}