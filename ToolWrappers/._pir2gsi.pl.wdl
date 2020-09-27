version 1.0

task _pir2gsipl {
  command <<<
    __pir2gsi_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}