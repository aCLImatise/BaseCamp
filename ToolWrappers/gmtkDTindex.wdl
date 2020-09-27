version 1.0

task GmtkDTindex {
  command <<<
    gmtkDTindex
  >>>
  output {
    File out_stdout = stdout()
  }
}