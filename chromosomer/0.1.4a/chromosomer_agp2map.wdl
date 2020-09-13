version 1.0

task ChromosomerAgp2map {
  command <<<
    chromosomer agp2map
  >>>
  output {
    File out_stdout = stdout()
  }
}