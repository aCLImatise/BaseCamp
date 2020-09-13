version 1.0

task WiggleToArrayTreepy {
  command <<<
    wiggle_to_array_tree_py
  >>>
  output {
    File out_stdout = stdout()
  }
}