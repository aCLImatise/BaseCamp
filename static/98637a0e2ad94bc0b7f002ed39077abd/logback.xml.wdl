version 1.0

task Logbackxml {
  command <<<
    logback_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}