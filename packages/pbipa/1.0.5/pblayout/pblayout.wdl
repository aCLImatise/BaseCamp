version 1.0

task Pblayout {
  command <<<
    pblayout
  >>>
  output {
    File out_stdout = stdout()
  }
}