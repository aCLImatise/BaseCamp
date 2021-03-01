version 1.0

task AWSSDKCloudWatchLogspdb {
  command <<<
    AWSSDK_CloudWatchLogs_pdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}