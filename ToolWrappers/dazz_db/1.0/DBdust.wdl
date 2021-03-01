version 1.0

task DBdust {
  input {
    Boolean? b
  }
  command <<<
    DBdust \
      ~{if (b) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}