version 1.0

task GetComment {
  input {
    Boolean cC
  }
  command <<<
    get_comment \
      ~{true="-c" false="" cC}
  >>>
}