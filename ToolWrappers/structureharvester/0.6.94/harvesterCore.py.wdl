version 1.0

task HarvesterCorepy {
  command <<<
    harvesterCore_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}