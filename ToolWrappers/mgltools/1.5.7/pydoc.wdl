version 1.0

task Pydoc {
  command <<<
    pydoc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}