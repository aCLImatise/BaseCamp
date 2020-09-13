version 1.0

task PrefixLinespy {
  command <<<
    prefix_lines_py
  >>>
  output {
    File out_stdout = stdout()
  }
}