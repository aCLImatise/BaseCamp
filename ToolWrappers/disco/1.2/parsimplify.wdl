version 1.0

task Parsimplify {
  command <<<
    parsimplify
  >>>
  output {
    File out_stdout = stdout()
  }
}