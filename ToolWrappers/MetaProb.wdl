version 1.0

task MetaProb {
  command <<<
    MetaProb
  >>>
  output {
    File out_stdout = stdout()
  }
}