version 1.0

task SerobaCreateDBs {
  command <<<
    seroba createDBs
  >>>
  output {
    File out_stdout = stdout()
  }
}