version 1.0

task Shuf {
  input {
    Boolean? echo
    String? input_range
    String? head_count
    File? write_result_file
    File? random_source
    Boolean? repeat
    Boolean? zero_terminated
    String? option
  }
  command <<<
    shuf \
      ~{option} \
      ~{true="--echo" false="" echo} \
      ~{if defined(input_range) then ("--input-range " +  '"' + input_range + '"') else ""} \
      ~{if defined(head_count) then ("--head-count " +  '"' + head_count + '"') else ""} \
      ~{if defined(write_result_file) then ("--output " +  '"' + write_result_file + '"') else ""} \
      ~{if defined(random_source) then ("--random-source " +  '"' + random_source + '"') else ""} \
      ~{true="--repeat" false="" repeat} \
      ~{true="--zero-terminated" false="" zero_terminated}
  >>>
  parameter_meta {
    echo: "treat each ARG as an input line"
    input_range: "treat each number LO through HI as an input line"
    head_count: "output at most COUNT lines"
    write_result_file: "write result to FILE instead of standard output"
    random_source: "get random bytes from FILE"
    repeat: "output lines can be repeated"
    zero_terminated: "line delimiter is NUL, not newline"
    option: ""
  }
}