version 1.0

task FastaTool {
  command <<<
    fasta_tool
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}