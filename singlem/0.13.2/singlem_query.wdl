version 1.0

task SinglemQuery {
  input {
    Boolean? debug
    Boolean? quiet
    String single_m
  }
  command <<<
    singlem query \
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