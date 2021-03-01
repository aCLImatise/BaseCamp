version 1.0

task Imfusion {
  command <<<
    imfusion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}