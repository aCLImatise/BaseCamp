version 1.0

task ConvertLtrdetectorpl {
  command <<<
    convert_ltrdetector_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}