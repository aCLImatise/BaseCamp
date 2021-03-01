version 1.0

task Bamdownsamplerandom {
  command <<<
    bamdownsamplerandom
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}