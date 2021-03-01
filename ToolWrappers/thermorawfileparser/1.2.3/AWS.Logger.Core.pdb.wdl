version 1.0

task AWSLoggerCorepdb {
  command <<<
    AWS_Logger_Core_pdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}