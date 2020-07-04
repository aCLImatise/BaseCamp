version 1.0

task Seqdiff {
  input {
    Boolean? first
    Boolean? second
    Boolean? a_output
    Boolean? b_output
    Boolean? c_output
    Boolean? headers
    Boolean? summary
    Boolean? verbose
  }
  command <<<
    seqdiff \
      ~{true="--first" false="" first} \
      ~{true="--second" false="" second} \
      ~{true="--a_output" false="" a_output} \
      ~{true="--b_output" false="" b_output} \
      ~{true="--c_output" false="" c_output} \
      ~{true="--headers" false="" headers} \
      ~{true="--summary" false="" summary} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    first: ",      First sequence file (required)"
    second: ",     Second sequence file (required)"
    a_output: ",   File name for uniques from first file"
    b_output: ",   File name for uniques from second file"
    c_output: ",   File name for common entries"
    headers: ",    Compare headers instead of sequences (default: false)"
    summary: ", Just show summary stats? (default: false)"
    verbose: ",    Print extra details during the run"
  }
}