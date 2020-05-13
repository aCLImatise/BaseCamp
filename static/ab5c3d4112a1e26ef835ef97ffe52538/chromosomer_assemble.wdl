version 1.0

task ChromosomerAssemble {
  input {
    Boolean sS
  }
  command <<<
    chromosomer assemble \
      ~{true="-s" false="" sS}
  >>>
}