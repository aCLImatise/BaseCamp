version 1.0

task Imfusion {
  command <<<
    imfusion
  >>>
  output {
    File out_stdout = stdout()
  }
}