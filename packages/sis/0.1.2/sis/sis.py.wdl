version 1.0

task Sispy {
  command <<<
    sis_py
  >>>
  output {
    File out_stdout = stdout()
  }
}