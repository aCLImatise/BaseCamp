version 1.0

task Sagapythonversion {
  command <<<
    sagapython_version
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}