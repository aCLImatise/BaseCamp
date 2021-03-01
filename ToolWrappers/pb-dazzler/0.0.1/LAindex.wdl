version 1.0

task LAindex {
  input {
    Boolean? v
  }
  command <<<
    LAindex \
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