version 1.0

task Abyssbowtie2 {
  command <<<
    abyss_bowtie2
  >>>
  output {
    File out_stdout = stdout()
  }
}