version 1.0

task ConvertFromProlineR {
  command <<<
    convertFromProline_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}