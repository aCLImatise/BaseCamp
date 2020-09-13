version 1.0

task CreateKmerssh {
  command <<<
    create_kmers_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}