version 1.0

task AWSLoggerCoredll {
  command <<<
    AWS_Logger_Core_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}