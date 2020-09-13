version 1.0

task Genomestrip {
  command <<<
    genomestrip
  >>>
  output {
    File out_stdout = stdout()
  }
}