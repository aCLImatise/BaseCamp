version 1.0

task RapidNormr {
  command <<<
    rapidNorm_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}