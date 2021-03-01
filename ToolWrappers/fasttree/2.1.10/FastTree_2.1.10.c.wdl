version 1.0

task FastTree2110c {
  command <<<
    FastTree_2_1_10_c
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}