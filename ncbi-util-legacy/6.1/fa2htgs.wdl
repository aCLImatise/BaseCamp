version 1.0

task Fa2htgs {
  input {
    Boolean kK
  }
  command <<<
    fa2htgs \
      ~{true="-k" false="" kK}
  >>>
}