version 1.0

task Pir2gsipl {
  command <<<
    pir2gsi_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}