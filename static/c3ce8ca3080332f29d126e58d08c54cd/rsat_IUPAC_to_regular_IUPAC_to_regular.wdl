version 1.0

task RsatIUPACtoregularIUPACtoregular {
  command <<<
    rsat IUPAC_to_regular IUPAC_to_regular
  >>>
  output {
    File out_stdout = stdout()
  }
}