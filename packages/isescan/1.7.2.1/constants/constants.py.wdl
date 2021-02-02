version 1.0

task Constantspy {
  command <<<
    constants_py
  >>>
  output {
    File out_stdout = stdout()
  }
}