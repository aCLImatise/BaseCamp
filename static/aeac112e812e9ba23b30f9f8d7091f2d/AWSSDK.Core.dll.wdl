version 1.0

task AWSSDKCoredll {
  command <<<
    AWSSDK_Core_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}