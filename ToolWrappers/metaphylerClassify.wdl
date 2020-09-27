version 1.0

task MetaphylerClassify {
  command <<<
    metaphylerClassify
  >>>
  output {
    File out_stdout = stdout()
  }
}