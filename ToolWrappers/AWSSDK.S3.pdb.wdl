version 1.0

task AWSSDKS3pdb {
  command <<<
    AWSSDK_S3_pdb
  >>>
  output {
    File out_stdout = stdout()
  }
}