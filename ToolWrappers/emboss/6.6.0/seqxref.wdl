version 1.0

task Seqxref {
  command <<<
    seqxref
  >>>
  output {
    File out_stdout = stdout()
  }
}