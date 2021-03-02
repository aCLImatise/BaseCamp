version 1.0

task CombineThreeOpy {
  command <<<
    combineThree_o_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}