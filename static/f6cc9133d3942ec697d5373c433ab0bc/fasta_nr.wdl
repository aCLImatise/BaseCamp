version 1.0

task Fastanr {
  input {
    Boolean? omit_sequence_is
    String seqs_dot_fast_a
  }
  command <<<
    fasta_nr \
      ~{seqs_dot_fast_a} \
      ~{if (omit_sequence_is) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1219--h2e03b76_0"
  }
  parameter_meta {
    omit_sequence_is: "omit any sequence that is a shorter substring of another"
    seqs_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}