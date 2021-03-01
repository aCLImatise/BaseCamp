version 1.0

task DB2Falcon {
  input {
    Boolean? u
    Int db_two_fast_a
  }
  command <<<
    DB2Falcon \
      ~{db_two_fast_a} \
      ~{if (u) then "-U" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    u: ""
    db_two_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}