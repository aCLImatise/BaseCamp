version 1.0

task ConcatemerTreepy {
  command <<<
    concatemer_tree_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}