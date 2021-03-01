version 1.0

task CreateKmerssh {
  command <<<
    create_kmers_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}