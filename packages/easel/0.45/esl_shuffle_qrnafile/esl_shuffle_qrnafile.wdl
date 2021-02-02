version 1.0

task EslshuffleQrnafile {
  input {
    Boolean? g
    Boolean? q
    Boolean? a
    String esl_shuffle
    String msa_file
    String seq_file
  }
  command <<<
    esl_shuffle qrnafile \
      ~{esl_shuffle} \
      ~{msa_file} \
      ~{seq_file} \
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
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}