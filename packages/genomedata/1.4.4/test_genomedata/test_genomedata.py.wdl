version 1.0

task TestGenomedatapy {
  command <<<
    test_genomedata_py
  >>>
  output {
    File out_stdout = stdout()
  }
}