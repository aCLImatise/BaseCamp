version 1.0

task _antigenic {
  input {
    Boolean minMinLen
  }
  command <<<
    _antigenic \
      ~{true="-minlen" false="" minMinLen}
  >>>
}