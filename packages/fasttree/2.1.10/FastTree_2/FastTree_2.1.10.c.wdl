version 1.0

task FastTree2110c {
  command <<<
    FastTree_2_1_10_c
  >>>
  output {
    File out_stdout = stdout()
  }
}