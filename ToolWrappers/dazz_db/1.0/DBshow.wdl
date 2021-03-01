version 1.0

task DBshow {
  input {
    Boolean? unq_uq
  }
  command <<<
    DBshow \
      ~{if (unq_uq) then "-unqUQ" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    unq_uq: ""
  }
  output {
    File out_stdout = stdout()
  }
}