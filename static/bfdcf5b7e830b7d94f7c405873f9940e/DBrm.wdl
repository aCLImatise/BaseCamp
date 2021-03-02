version 1.0

task DBrm {
  input {
    Boolean? v
  }
  command <<<
    DBrm \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}