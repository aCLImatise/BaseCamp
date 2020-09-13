version 1.0

task FastaTool {
  command <<<
    fasta_tool
  >>>
  output {
    File out_stdout = stdout()
  }
}