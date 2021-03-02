version 1.0

task EslshuffleSeqfile {
  input {
    Boolean? g
    Boolean? a
    String esl_shuffle
    String msa_file
  }
  command <<<
    esl_shuffle seqfile \
      ~{esl_shuffle} \
      ~{msa_file} \
      ~{if (g) then "-G" else ""} \
      ~{if (a) then "-A" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g: ""
    a: ""
    esl_shuffle: ""
    msa_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}