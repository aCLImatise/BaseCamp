version 1.0

task DB2Falcon {
  input {
    Boolean? u
    String db_two_fast_a
  }
  command <<<
    DB2Falcon \
      ~{db_two_fast_a} \
      ~{true="-U" false="" u}
  >>>
  parameter_meta {
    u: ""
    db_two_fast_a: ""
  }
}