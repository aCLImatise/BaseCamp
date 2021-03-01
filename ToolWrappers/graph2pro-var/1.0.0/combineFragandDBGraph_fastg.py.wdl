version 1.0

task CombineFragandDBGraphFastgpy {
  command <<<
    combineFragandDBGraph_fastg_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}