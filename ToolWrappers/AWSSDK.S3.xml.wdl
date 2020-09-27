version 1.0

task AWSSDKS3xml {
  command <<<
    AWSSDK_S3_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}