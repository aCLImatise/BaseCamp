version 1.0

task NwClade {
  input {
    Boolean sS
  }
  command <<<
    nw_clade \
      ~{true="-s" false="" sS}
  >>>
}