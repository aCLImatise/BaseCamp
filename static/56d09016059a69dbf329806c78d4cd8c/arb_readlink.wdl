version 1.0

task ArbReadlink {
  input {
    Boolean? silent
    Boolean? verbose
    Boolean? end_output_line
    String readlink
    String? option
  }
  command <<<
    arb_readlink \
      ~{readlink} \
      ~{option} \
      ~{true="--silent" false="" silent} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--zero" false="" end_output_line}
  >>>
  parameter_meta {
    silent: "suppress most error messages (on by default)"
    verbose: "report error messages"
    end_output_line: "end each output line with NUL, not newline"
    readlink: ""
    option: ""
  }
}