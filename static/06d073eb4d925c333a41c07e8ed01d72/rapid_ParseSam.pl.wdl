version 1.0

task RapidParseSampl {
  command <<<
    rapid_ParseSam_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}