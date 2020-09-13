version 1.0

task _swiss2gsipl {
  command <<<
    __swiss2gsi_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}