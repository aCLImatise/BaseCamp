version 1.0

task MakerFunctionalFasta {
  command <<<
    maker_functional_fasta
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}