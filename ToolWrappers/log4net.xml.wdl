version 1.0

task Log4netxml {
  command <<<
    log4net_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}