version 1.0

task Trinculo {
  command <<<
    trinculo
  >>>
  output {
    File out_stdout = stdout()
  }
}