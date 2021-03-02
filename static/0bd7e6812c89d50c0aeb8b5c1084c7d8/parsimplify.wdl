version 1.0

task Parsimplify {
  command <<<
    parsimplify
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}