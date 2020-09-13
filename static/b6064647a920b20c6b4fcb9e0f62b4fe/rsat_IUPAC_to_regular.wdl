version 1.0

task RsatIUPACtoregular {
  command <<<
    rsat IUPAC_to_regular
  >>>
  output {
    File out_stdout = stdout()
  }
}