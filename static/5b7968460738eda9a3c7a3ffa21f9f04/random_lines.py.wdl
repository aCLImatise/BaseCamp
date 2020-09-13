version 1.0

task RandomLinespy {
  command <<<
    random_lines_py
  >>>
  output {
    File out_stdout = stdout()
  }
}