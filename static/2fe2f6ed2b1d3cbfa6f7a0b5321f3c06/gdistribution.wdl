version 1.0

task Gdistribution {
  command <<<
    gdistribution
  >>>
  output {
    File out_stdout = stdout()
  }
}