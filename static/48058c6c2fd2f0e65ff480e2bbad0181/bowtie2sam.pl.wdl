version 1.0

task Bowtie2sampl {
  command <<<
    bowtie2sam_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}