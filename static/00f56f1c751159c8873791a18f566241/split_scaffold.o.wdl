version 1.0

task SplitScaffoldo {
  command <<<
    split_scaffold_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}