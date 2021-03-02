version 1.0

task Polystestyml {
  command <<<
    polystest_yml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}