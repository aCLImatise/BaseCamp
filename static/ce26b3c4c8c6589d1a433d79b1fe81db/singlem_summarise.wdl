version 1.0

task SinglemSummarise {
  input {
    Boolean? debug
    Boolean? quiet
    String single_m
  }
  command <<<
    singlem summarise \
      ~{single_m} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    debug: ""
    quiet: ""
    single_m: ""
  }
}