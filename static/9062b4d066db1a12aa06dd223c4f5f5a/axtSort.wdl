version 1.0

task AxtSort {
  command <<<
    axtSort
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}