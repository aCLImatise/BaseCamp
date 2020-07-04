version 1.0

task Cover {
  input {
    Boolean? test
  }
  command <<<
    cover \
      ~{true="-test" false="" test}
  >>>
  parameter_meta {
    test: ""
  }
}