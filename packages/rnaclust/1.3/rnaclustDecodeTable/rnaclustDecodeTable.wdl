version 1.0

task RnaclustDecodeTable {
  command <<<
    rnaclustDecodeTable
  >>>
  output {
    File out_stdout = stdout()
  }
}