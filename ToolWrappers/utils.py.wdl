version 1.0

task Utilspy {
  command <<<
    utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}