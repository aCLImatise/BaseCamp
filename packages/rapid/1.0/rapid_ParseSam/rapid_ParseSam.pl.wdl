version 1.0

task RapidParseSampl {
  command <<<
    rapid_ParseSam_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}