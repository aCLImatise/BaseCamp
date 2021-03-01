version 1.0

task CompAssignpy {
  command <<<
    CompAssign_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}