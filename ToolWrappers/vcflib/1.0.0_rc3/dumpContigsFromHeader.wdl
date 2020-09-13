version 1.0

task DumpContigsFromHeader {
  command <<<
    dumpContigsFromHeader
  >>>
  output {
    File out_stdout = stdout()
  }
}