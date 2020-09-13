version 1.0

task UpdateAliaspy {
  command <<<
    update_alias_py
  >>>
  output {
    File out_stdout = stdout()
  }
}