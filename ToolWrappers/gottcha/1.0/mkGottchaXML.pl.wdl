version 1.0

task MkGottchaXMLpl {
  command <<<
    mkGottchaXML_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}