version 1.0

task Finestructure {
  input {
    Boolean zZ
    Boolean zZ
  }
  command <<<
    finestructure \
      ~{true="-z" false="" zZ} \
      ~{true="-z" false="" zZ}
  >>>
}