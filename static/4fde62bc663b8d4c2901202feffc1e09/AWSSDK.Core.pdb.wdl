version 1.0

task AWSSDKCorepdb {
  command <<<
    AWSSDK_Core_pdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}