version 1.0

task Omssa2pepXML {
  command <<<
    omssa2pepXML
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}