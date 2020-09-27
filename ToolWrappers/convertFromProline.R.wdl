version 1.0

task ConvertFromProlineR {
  command <<<
    convertFromProline_R
  >>>
  output {
    File out_stdout = stdout()
  }
}