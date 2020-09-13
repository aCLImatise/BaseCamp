version 1.0

task Proteinortho2xmlpl {
  command <<<
    proteinortho2xml_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}