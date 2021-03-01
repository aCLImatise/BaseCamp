version 1.0

task Bed2fastapy {
  command <<<
    bed2fasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}