version 1.0

task AWSLoggerCoredll {
  command <<<
    AWS_Logger_Core_dll
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.3--ha8f3691_1"
  }
  output {
    File out_stdout = stdout()
  }
}