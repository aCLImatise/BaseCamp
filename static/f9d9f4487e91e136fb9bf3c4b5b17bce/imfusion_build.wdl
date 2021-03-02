version 1.0

task Imfusionbuild {
  command <<<
    imfusion_build
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}