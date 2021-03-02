version 1.0

task Filteroriginalfusion {
  command <<<
    filteroriginalfusion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}