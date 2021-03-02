version 1.0

task MkGottchaXMLpl {
  command <<<
    mkGottchaXML_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}