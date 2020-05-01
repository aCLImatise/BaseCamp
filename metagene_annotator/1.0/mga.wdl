version 1.0

task Mga {
  input {
    Boolean mM
    Boolean sS
  }
  command <<<
    mga \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS}
  >>>
}