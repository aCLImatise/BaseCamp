version 1.0

task Multifastapy {
  command <<<
    multifasta_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}