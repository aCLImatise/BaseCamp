version 1.0

task DB2quiva {
  input {
    Boolean? vu
  }
  command <<<
    DB2quiva \
      ~{if (vu) then "-vU" else ""}
  >>>
  parameter_meta {
    vu: ""
  }
  output {
    File out_stdout = stdout()
  }
}