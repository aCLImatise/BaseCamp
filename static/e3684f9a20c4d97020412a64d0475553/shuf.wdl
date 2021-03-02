version 1.0

task Shuf {
  input {
    Boolean? echo
    Int? input_range
    String? head_count
    File? write_result_output
    File? random_source
    Boolean? repeat
    Boolean? zero_terminated
  }
  command <<<
    shuf \
      ~{if (echo) then "--echo" else ""} \
      ~{if defined(input_range) then ("--input-range " +  '"' + input_range + '"') else ""} \
      ~{if defined(head_count) then ("--head-count " +  '"' + head_count + '"') else ""} \
      ~{if defined(write_result_output) then ("--output " +  '"' + write_result_output + '"') else ""} \
      ~{if defined(random_source) then ("--random-source " +  '"' + random_source + '"') else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    echo: "treat each ARG as an input line"
    input_range: "treat each number LO through HI as an input line"
    head_count: "output at most COUNT lines"
    write_result_output: "write result to FILE instead of standard output"
    random_source: "get random bytes from FILE"
    repeat: "output lines can be repeated"
    zero_terminated: "line delimiter is NUL, not newline"
  }
  output {
    File out_stdout = stdout()
    File out_write_result_output = "${in_write_result_output}"
  }
}