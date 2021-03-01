version 1.0

task Fastg2fastapy {
  command <<<
    fastg2fasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}