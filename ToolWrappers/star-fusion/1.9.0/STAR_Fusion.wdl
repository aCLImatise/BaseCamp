version 1.0

task STARFusion {
  command <<<
    STAR_Fusion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}