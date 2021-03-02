version 1.0

task AWSSDKS3dll {
  command <<<
    AWSSDK_S3_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}