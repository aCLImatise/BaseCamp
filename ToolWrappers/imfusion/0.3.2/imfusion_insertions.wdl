version 1.0

task Imfusioninsertions {
  command <<<
    imfusion_insertions
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}