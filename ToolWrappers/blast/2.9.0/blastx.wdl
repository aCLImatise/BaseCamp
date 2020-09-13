version 1.0

task Blastx {
  command <<<
    blastx
  >>>
  output {
    File out_stdout = stdout()
  }
}