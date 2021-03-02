version 1.0

task Abyssbowtie2 {
  command <<<
    abyss_bowtie2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}