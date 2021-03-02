version 1.0

task Bioblendgalaxytests {
  command <<<
    bioblend_galaxy_tests
  >>>
  runtime {
    docker: "quay.io/biocontainers/bioblend:0.15.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}