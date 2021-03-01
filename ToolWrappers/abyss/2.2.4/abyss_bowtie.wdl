version 1.0

task Abyssbowtie {
  command <<<
    abyss_bowtie
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}