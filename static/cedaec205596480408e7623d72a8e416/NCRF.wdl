version 1.0

task NCRF {
  input {
    String cat
    String fast_a
  }
  command <<<
    NCRF \
      ~{cat} \
      ~{fast_a}
  >>>
  parameter_meta {
    cat: ""
    fast_a: ""
  }
}