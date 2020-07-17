version 1.0

task Findopt {
  input {
    Boolean? b
  }
  command <<<
    findopt \
      ~{true="-b" false="" b}
  >>>
  parameter_meta {
    b: ""
  }
}