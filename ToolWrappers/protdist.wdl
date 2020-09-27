version 1.0

task Protdist {
  command <<<
    protdist
  >>>
  output {
    File out_stdout = stdout()
  }
}