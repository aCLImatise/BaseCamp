version 1.0

task CompAssignpy {
  command <<<
    CompAssign_py
  >>>
  output {
    File out_stdout = stdout()
  }
}