version 1.0

task Ribotish {
  command <<<
    ribotish
  >>>
  output {
    File out_stdout = stdout()
  }
}