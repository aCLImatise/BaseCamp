version 1.0

task Seqseqpan {
  command <<<
    seq_seq_pan
  >>>
  output {
    File out_stdout = stdout()
  }
}