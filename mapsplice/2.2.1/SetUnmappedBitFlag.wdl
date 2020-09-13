version 1.0

task SetUnmappedBitFlag {
  command <<<
    SetUnmappedBitFlag
  >>>
  output {
    File out_stdout = stdout()
  }
}