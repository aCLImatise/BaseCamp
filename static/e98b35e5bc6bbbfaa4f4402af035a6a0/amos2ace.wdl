version 1.0

task Amos2ace {
  input {
    Boolean oO
  }
  command <<<
    amos2ace \
      ~{true="-o" false="" oO}
  >>>
}