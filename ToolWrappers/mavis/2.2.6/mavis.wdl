version 1.0

task Mavis {
  input {
    Boolean? v
  }
  command <<<
    mavis \
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