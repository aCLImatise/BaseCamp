version 1.0

task MetabinkitSharedsh {
  command <<<
    metabinkit_shared_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}