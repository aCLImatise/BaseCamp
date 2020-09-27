version 1.0

task AWSLoggerCorepdb {
  command <<<
    AWS_Logger_Core_pdb
  >>>
  output {
    File out_stdout = stdout()
  }
}