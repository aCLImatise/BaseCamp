version 1.0

task ReadChromoSize {
  command <<<
    read_chromo_size
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}