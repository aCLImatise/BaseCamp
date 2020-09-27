version 1.0

task AWSSDKCloudWatchLogsdll {
  command <<<
    AWSSDK_CloudWatchLogs_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}