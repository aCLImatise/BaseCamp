version 1.0

task Pastepy {
  command <<<
    paste_py
  >>>
  output {
    File out_stdout = stdout()
  }
}