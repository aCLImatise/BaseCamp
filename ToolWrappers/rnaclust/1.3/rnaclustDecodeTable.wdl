version 1.0

task RnaclustDecodeTable {
  command <<<
    rnaclustDecodeTable
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}