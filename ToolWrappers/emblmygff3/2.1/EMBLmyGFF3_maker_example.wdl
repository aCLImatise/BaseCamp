version 1.0

task EMBLmyGFF3makerexample {
  command <<<
    EMBLmyGFF3_maker_example
  >>>
  runtime {
    docker: "quay.io/biocontainers/emblmygff3:2.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}