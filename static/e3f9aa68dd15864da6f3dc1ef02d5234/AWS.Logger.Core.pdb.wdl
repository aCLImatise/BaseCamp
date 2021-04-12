version 1.0

task AWSLoggerCorepdb {
  command <<<
    AWS_Logger_Core_pdb
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.3--ha8f3691_1"
  }
  output {
    File out_stdout = stdout()
  }
}