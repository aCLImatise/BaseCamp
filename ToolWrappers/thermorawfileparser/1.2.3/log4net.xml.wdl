version 1.0

task Log4netxml {
  command <<<
    log4net_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}