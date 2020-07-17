version 1.0

task Pathoscope {
  input {
    Boolean? verbose
  }
  command <<<
    pathoscope \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Prints verbose text while running"
  }
}