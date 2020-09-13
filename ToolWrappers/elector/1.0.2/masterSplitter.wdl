version 1.0

task MasterSplitter {
  command <<<
    masterSplitter
  >>>
  output {
    File out_stdout = stdout()
  }
}