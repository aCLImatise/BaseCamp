version 1.0

task Bamdownsamplerandom {
  command <<<
    bamdownsamplerandom
  >>>
  output {
    File out_stdout = stdout()
  }
}