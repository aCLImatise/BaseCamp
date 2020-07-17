version 1.0

task DBstats {
  input {
    Boolean? nu
  }
  command <<<
    DBstats \
      ~{true="-nu" false="" nu}
  >>>
  parameter_meta {
    nu: ""
  }
}