version 1.0

task RmOut2Fastapl {
  command <<<
    rmOut2Fasta_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/repeatmasker:4.1.1--pl526_1"
  }
  output {
    File out_stdout = stdout()
  }
}