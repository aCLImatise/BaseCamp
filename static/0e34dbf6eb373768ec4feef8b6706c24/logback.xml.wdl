version 1.0

task Logbackxml {
  command <<<
    logback_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}