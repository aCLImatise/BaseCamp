version 1.0

task SsueslshuffleSeqfile {
  input {
    Boolean? g
    Boolean? q
    Boolean? a
    String ssu_esl_shuffle
    String msa_file
    String q_rna_file
  }
  command <<<
    ssu_esl_shuffle seqfile \
      ~{ssu_esl_shuffle} \
      ~{msa_file} \
      ~{q_rna_file} \
      ~{if (g) then "-G" else ""} \
      ~{if (q) then "-Q" else ""} \
      ~{if (a) then "-A" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g: ""
    q: ""
    a: ""
    ssu_esl_shuffle: ""
    msa_file: ""
    q_rna_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}