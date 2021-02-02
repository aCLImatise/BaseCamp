version 1.0

task Bioblendgalaxytests {
  command <<<
    bioblend_galaxy_tests
  >>>
  output {
    File out_stdout = stdout()
  }
}