version 1.0

task Shimspy {
  command <<<
    shims_py
  >>>
  output {
    File out_stdout = stdout()
  }
}