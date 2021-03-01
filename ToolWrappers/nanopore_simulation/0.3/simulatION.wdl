version 1.0

task SimulatION {
  input {
    Boolean? v
  }
  command <<<
    simulatION \
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