version 1.0

task SeqIOpy {
  command <<<
    SeqIO_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}