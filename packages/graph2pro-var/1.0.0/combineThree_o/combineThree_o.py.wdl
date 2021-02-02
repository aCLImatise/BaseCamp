version 1.0

task CombineThreeOpy {
  command <<<
    combineThree_o_py
  >>>
  output {
    File out_stdout = stdout()
  }
}