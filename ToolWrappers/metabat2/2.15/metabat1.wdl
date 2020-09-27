version 1.0

task Metabat1 {
  command <<<
    metabat1
  >>>
  output {
    File out_stdout = stdout()
  }
}