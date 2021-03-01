version 1.0

task ConvertMafpl {
  command <<<
    convertMaf_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}