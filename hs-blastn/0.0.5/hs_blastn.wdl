version 1.0

task HsBlastn {
  input {
    String one
  }
  command <<<
    hs-blastn \
      ~{one}
  >>>
  parameter_meta {
    one: ""
  }
}