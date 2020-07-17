version 1.0

task Skmer {
  input {
    Boolean? debug
  }
  command <<<
    skmer \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    debug: "Print the traceback when an exception is raised"
  }
}