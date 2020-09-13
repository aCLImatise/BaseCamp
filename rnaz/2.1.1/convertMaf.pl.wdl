version 1.0

task ConvertMafpl {
  command <<<
    convertMaf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}