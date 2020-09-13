version 1.0

task AWSSDKS3dll {
  command <<<
    AWSSDK_S3_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}