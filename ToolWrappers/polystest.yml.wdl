version 1.0

task Polystestyml {
  command <<<
    polystest_yml
  >>>
  output {
    File out_stdout = stdout()
  }
}