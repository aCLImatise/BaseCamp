version 1.0

task MetaProb {
  command <<<
    MetaProb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}