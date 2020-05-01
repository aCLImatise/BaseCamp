version 1.0

task Testepsg {
  input {
    Boolean tT
  }
  command <<<
    testepsg \
      ~{true="-t" false="" tT}
  >>>
}