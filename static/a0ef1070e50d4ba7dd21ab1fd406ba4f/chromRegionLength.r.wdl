version 1.0

task ChromRegionLengthr {
  command <<<
    chromRegionLength_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}