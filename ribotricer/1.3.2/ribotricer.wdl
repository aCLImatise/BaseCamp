version 1.0

task Ribotricer {
  command <<<
    ribotricer
  >>>
  output {
    File out_stdout = stdout()
  }
}