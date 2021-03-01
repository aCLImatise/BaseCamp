version 1.0

task Resample {
  command <<<
    resample
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}