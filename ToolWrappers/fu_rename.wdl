version 1.0

task Furename {
  command <<<
    fu_rename
  >>>
  output {
    File out_stdout = stdout()
  }
}