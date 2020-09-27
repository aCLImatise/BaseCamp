version 1.0

task FilterPEReadspy {
  command <<<
    FilterPEReads_py
  >>>
  output {
    File out_stdout = stdout()
  }
}