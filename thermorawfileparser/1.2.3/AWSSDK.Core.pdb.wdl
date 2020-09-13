version 1.0

task AWSSDKCorepdb {
  command <<<
    AWSSDK_Core_pdb
  >>>
  output {
    File out_stdout = stdout()
  }
}