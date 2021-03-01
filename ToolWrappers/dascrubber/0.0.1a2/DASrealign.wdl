version 1.0

task DASrealign {
  input {
    Boolean? v
  }
  command <<<
    DASrealign \
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