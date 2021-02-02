version 1.0

task Libdrawtreeso {
  command <<<
    libdrawtree_so
  >>>
  output {
    File out_stdout = stdout()
  }
}