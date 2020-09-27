version 1.0

task ReadChromoSize {
  command <<<
    read_chromo_size
  >>>
  output {
    File out_stdout = stdout()
  }
}