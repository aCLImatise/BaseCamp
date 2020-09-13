version 1.0

task Seqhax {
  command <<<
    seqhax
  >>>
  output {
    File out_stdout = stdout()
  }
}