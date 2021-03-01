version 1.0

task GetProteinFastapy {
  command <<<
    getProteinFasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}