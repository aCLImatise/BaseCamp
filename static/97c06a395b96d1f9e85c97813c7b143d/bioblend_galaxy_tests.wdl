version 1.0

task Bioblendgalaxytests {
  command <<<
    bioblend_galaxy_tests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}