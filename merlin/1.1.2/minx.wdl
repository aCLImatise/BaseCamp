version 1.0

task Minx {
  input {
    Boolean? tabulate
  }
  command <<<
    minx \
      ~{true="--tabulate" false="" tabulate}
  >>>
  parameter_meta {
    tabulate: "[merlin]"
  }
}