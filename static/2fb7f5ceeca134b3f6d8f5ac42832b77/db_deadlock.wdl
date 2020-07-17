version 1.0

task DbDeadlock {
  input {
    Boolean? vv
  }
  command <<<
    db_deadlock \
      ~{true="-Vv" false="" vv}
  >>>
  parameter_meta {
    vv: ""
  }
}