version 1.0

task Seqseqpanconsensus {
  input {
    String input_do_tx_mfa
  }
  command <<<
    seq_seq_pan_consensus \
      ~{input_do_tx_mfa}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_do_tx_mfa: ""
  }
  output {
    File out_stdout = stdout()
  }
}