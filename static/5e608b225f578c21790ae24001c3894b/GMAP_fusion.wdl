version 1.0

task GMAPfusion {
  command <<<
    GMAP_fusion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}