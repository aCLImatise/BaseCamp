version 1.0

task AWSSDKS3dll {
  command <<<
    AWSSDK_S3_dll
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}