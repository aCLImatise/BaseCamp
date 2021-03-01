version 1.0

task Wdltool {
  input {
    String workflow_dot
  }
  command <<<
    wdltool \
      ~{workflow_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    workflow_dot: "Fill in the values in this JSON document and"
  }
  output {
    File out_stdout = stdout()
  }
}