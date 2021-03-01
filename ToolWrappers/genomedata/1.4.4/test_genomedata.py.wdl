version 1.0

task TestGenomedatapy {
  command <<<
    test_genomedata_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}