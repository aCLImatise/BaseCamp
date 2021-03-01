version 1.0

task ReadGroupingpy {
  command <<<
    read_grouping_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}