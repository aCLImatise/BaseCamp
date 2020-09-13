version 1.0

task Omssa2pepXML {
  command <<<
    omssa2pepXML
  >>>
  output {
    File out_stdout = stdout()
  }
}