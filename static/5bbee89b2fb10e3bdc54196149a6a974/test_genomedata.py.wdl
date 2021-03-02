version 1.0

task TestGenomedatapy {
  command <<<
    test_genomedata_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0"
  }
  output {
    File out_stdout = stdout()
  }
}