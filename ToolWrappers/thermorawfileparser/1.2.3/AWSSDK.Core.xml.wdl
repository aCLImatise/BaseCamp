version 1.0

task AWSSDKCorexml {
  command <<<
    AWSSDK_Core_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}