version 1.0

task Novo2paf {
  command <<<
    novo2paf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}