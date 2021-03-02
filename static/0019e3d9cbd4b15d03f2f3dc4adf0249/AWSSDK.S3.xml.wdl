version 1.0

task AWSSDKS3xml {
  command <<<
    AWSSDK_S3_xml
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}