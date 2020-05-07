version 1.0

task Shustring {
  input {
    String? generalGeneral
  }
  command <<<
    shustring \
      ~{generalGeneral}
  >>>
}