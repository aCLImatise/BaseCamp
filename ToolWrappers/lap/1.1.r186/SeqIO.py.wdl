version 1.0

task SeqIOpy {
  command <<<
    SeqIO_py
  >>>
  output {
    File out_stdout = stdout()
  }
}