version 1.0

task Merlin {
  input {
    Boolean? tabulate
  }
  command <<<
    merlin \
      ~{true="--tabulate" false="" tabulate}
  >>>
  parameter_meta {
    tabulate: "[merlin]"
  }
}