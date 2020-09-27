version 1.0

task SsueslshuffleQrnafile {
  input {
    Boolean? g
    Boolean? q
    Boolean? a
    String ssu_esl_shuffle
    String msa_file
    String seq_file
  }
  command <<<
    ssu_esl_shuffle qrnafile \
      ~{ssu_esl_shuffle} \
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
    ssu_esl_shuffle: ""
    msa_file: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}