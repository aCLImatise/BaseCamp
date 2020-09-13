version 1.0

task UnifyHeaderspy {
  command <<<
    UnifyHeaders_py
  >>>
  output {
    File out_stdout = stdout()
  }
}