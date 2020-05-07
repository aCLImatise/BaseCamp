version 1.0

task Pbgzip {
  input {
    Boolean sS
  }
  command <<<
    pbgzip \
      ~{true="-S" false="" sS}
  >>>
}