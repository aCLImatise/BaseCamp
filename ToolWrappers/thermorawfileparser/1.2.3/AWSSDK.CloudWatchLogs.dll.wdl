version 1.0

task AWSSDKCloudWatchLogsdll {
  command <<<
    AWSSDK_CloudWatchLogs_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}