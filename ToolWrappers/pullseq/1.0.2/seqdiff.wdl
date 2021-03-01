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
      ~{if (first) then "--first" else ""} \
      ~{if (second) then "--second" else ""} \
      ~{if (a_output) then "--a_output" else ""} \
      ~{if (b_output) then "--b_output" else ""} \
      ~{if (c_output) then "--c_output" else ""} \
      ~{if (headers) then "--headers" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}