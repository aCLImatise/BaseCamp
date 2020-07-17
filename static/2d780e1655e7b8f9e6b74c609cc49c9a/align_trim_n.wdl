version 1.0

task AlignTrimN {
  input {
    Boolean? verbose
  }
  command <<<
    align_trim_n \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Debug mode"
  }
}