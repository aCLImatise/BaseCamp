version 1.0

task SinglemMakedb {
  input {
    Boolean? debug
    Boolean? quiet
    Boolean? full_help
  }
  command <<<
    singlem makedb \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--full_help" false="" full_help}
  >>>
  parameter_meta {
    debug: ""
    quiet: ""
    full_help: ""
  }
}