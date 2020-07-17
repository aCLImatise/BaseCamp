version 1.0

task Bats {
  input {
    Boolean? c
  }
  command <<<
    bats \
      ~{true="-c" false="" c}
  >>>
  parameter_meta {
    c: ""
  }
}