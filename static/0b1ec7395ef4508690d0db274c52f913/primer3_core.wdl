version 1.0

task Primer3Core {
  input {
    Boolean? format_output
  }
  command <<<
    primer3_core \
      ~{true="--format_output" false="" format_output}
  >>>
  parameter_meta {
    format_output: ""
  }
}