version 1.0

task ConcatemerTreepy {
  command <<<
    concatemer_tree_py
  >>>
  output {
    File out_stdout = stdout()
  }
}