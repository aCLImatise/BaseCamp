version 1.0

task DB2fasta {
  input {
    Boolean? vu
  }
  command <<<
    DB2fasta \
      ~{if (vu) then "-vU" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vu: ""
  }
  output {
    File out_stdout = stdout()
  }
}