version 1.0

task Amos2ace {
  input {
    Boolean? see_below
  }
  command <<<
    amos2ace \
      ~{true="-o" false="" see_below}
  >>>
  parameter_meta {
    see_below: "(see below)."
  }
}