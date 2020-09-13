version 1.0

task Contig2contig {
  command <<<
    contig2contig
  >>>
  output {
    File out_stdout = stdout()
  }
}