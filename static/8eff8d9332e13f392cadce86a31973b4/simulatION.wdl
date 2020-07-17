version 1.0

task SimulatION {
  input {
    Boolean? v
  }
  command <<<
    simulatION \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}