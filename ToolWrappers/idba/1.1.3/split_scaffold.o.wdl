version 1.0

task SplitScaffoldo {
  command <<<
    split_scaffold_o
  >>>
  output {
    File out_stdout = stdout()
  }
}