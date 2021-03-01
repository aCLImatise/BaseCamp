version 1.0

task CombineFragandDBGraphFastgOldpy {
  command <<<
    combineFragandDBGraph_fastg_old_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}