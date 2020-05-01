version 1.0

task NwCondense {
  input {
    Boolean uU
  }
  command <<<
    nw_condense \
      ~{true="-u" false="" uU}
  >>>
}