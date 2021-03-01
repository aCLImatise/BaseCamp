version 1.0

task AWSSDKCoredll {
  command <<<
    AWSSDK_Core_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}