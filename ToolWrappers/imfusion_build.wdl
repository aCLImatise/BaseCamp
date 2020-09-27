version 1.0

task Imfusionbuild {
  command <<<
    imfusion_build
  >>>
  output {
    File out_stdout = stdout()
  }
}