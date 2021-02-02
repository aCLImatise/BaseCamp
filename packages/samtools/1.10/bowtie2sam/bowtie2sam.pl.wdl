version 1.0

task Bowtie2sampl {
  command <<<
    bowtie2sam_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}