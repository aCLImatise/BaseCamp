version 1.0

task Bamseqchksum {
  command <<<
    bamseqchksum
  >>>
  output {
    File out_stdout = stdout()
  }
}