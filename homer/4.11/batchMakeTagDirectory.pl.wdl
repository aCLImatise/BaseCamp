version 1.0

task BatchMakeTagDirectorypl {
  command <<<
    batchMakeTagDirectory_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}