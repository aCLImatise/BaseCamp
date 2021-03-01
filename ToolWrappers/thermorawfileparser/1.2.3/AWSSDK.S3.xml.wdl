version 1.0

task AWSSDKS3xml {
  command <<<
    AWSSDK_S3_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}