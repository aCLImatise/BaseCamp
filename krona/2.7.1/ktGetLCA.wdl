version 1.0

task KtGetLCA {
  input {
    Boolean sS
  }
  command <<<
    ktGetLCA \
      ~{true="-s" false="" sS}
  >>>
}