version 1.0

task RapidNormr {
  command <<<
    rapidNorm_r
  >>>
  output {
    File out_stdout = stdout()
  }
}