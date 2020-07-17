version 1.0

task LAcat {
  input {
    Boolean? v
  }
  command <<<
    LAcat \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}