version 1.0

task Quiva2DB {
  input {
    Boolean? vl
  }
  command <<<
    quiva2DB \
      ~{true="-vl" false="" vl}
  >>>
  parameter_meta {
    vl: ""
  }
}