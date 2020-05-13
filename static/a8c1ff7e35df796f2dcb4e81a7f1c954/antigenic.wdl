version 1.0

task Antigenic {
  input {
    Boolean minMinLen
  }
  command <<<
    antigenic \
      ~{true="-minlen" false="" minMinLen}
  >>>
}