version 1.0

task Biom {
  command <<<
    biom
  >>>
  output {
    File out_stdout = stdout()
  }
}