version 1.0

task ReverseComplement {
  command <<<
    reverse_complement
  >>>
  output {
    File out_stdout = stdout()
  }
}