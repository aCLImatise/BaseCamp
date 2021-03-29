version 1.0

task EMBLmyGFF3prokkaexample {
  command <<<
    EMBLmyGFF3_prokka_example
  >>>
  runtime {
    docker: "quay.io/biocontainers/emblmygff3:2.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}