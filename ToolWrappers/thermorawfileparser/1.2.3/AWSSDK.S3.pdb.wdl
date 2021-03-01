version 1.0

task AWSSDKS3pdb {
  command <<<
    AWSSDK_S3_pdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}