version 1.0

task DumpLA {
  command <<<
    dumpLA
  >>>
  output {
    File out_stdout = stdout()
  }
}