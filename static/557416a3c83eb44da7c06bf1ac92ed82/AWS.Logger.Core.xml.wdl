version 1.0

task AWSLoggerCorexml {
  command <<<
    AWS_Logger_Core_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}