version 1.0

task BlastToPsl {
  command <<<
    blastToPsl
  >>>
  output {
    File out_stdout = stdout()
  }
}