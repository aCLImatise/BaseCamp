version 1.0

task EslshuffleSeqfile {
  input {
    Boolean? g
    Boolean? q
    Boolean? a
    String esl_shuffle
    String msa_file
    String q_rna_file
  }
  command <<<
    esl_shuffle seqfile \
      ~{esl_shuffle} \
      ~{msa_file} \
      ~{q_rna_file} \
      ~{if (g) then "-G" else ""} \
      ~{if (q) then "-Q" else ""} \
      ~{if (a) then "-A" else ""}
  >>>
  parameter_meta {
    g: ""
    q: ""
    a: ""
    esl_shuffle: ""
    msa_file: ""
    q_rna_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}