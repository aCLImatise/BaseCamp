version 1.0

task ConvertLtrdetectorpl {
  command <<<
    convert_ltrdetector_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}