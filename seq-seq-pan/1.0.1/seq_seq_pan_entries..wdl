version 1.0

task SeqseqpanEntries {
  input {
    String seq_seq_pando_tpy
  }
  command <<<
    seq_seq_pan entries_ \
      ~{seq_seq_pando_tpy}
  >>>
  parameter_meta {
    seq_seq_pando_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}