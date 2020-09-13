version 1.0

task Bufetbin {
  command <<<
    bufet_bin
  >>>
  output {
    File out_stdout = stdout()
  }
}