version 1.0

task MetabinkitSharedsh {
  command <<<
    metabinkit_shared_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/metabinkit:0.2.2--r40hed695b0_1"
  }
  output {
    File out_stdout = stdout()
  }
}