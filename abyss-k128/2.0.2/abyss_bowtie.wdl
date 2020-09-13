version 1.0

task Abyssbowtie {
  command <<<
    abyss_bowtie
  >>>
  output {
    File out_stdout = stdout()
  }
}