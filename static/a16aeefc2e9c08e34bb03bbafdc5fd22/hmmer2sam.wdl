version 1.0

task Hmmer2sam {
  command <<<
    hmmer2sam
  >>>
  output {
    File out_stdout = stdout()
  }
}