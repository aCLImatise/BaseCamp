version 1.0

task Clstr2xmlpl {
  command <<<
    clstr2xml_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}