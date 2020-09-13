version 1.0

task AWSSDKCloudWatchLogsxml {
  command <<<
    AWSSDK_CloudWatchLogs_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}