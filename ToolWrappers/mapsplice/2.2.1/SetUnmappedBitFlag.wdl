version 1.0

task SetUnmappedBitFlag {
  command <<<
    SetUnmappedBitFlag
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}