version 1.0

task EMBLmyGFF3augustusexample {
  command <<<
    EMBLmyGFF3_augustus_example
  >>>
  runtime {
    docker: "quay.io/biocontainers/emblmygff3:2.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}