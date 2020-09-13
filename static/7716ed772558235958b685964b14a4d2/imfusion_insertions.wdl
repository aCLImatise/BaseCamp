version 1.0

task Imfusioninsertions {
  command <<<
    imfusion_insertions
  >>>
  output {
    File out_stdout = stdout()
  }
}