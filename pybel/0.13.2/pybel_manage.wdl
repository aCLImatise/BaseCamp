version 1.0

task PybelManage {
  command <<<
    pybel manage
  >>>
  output {
    File out_stdout = stdout()
  }
}