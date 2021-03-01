version 1.0

task SeqseqpanSubcommand {
  input {
    String seq_seq_pando_tpy
  }
  command <<<
    seq_seq_pan subcommand \
      ~{seq_seq_pando_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seq-seq-pan:1.1.0--py_1"
  }
  parameter_meta {
    seq_seq_pando_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}